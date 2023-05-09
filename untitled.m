% Definir frequências de afinação padrão das cordas da guitarra
cordas_afinadas = [329.63, 246.94, 196.00, 146.83, 110.00, 82.41];

% Configurar a entrada de áudio
fs = 44100; % taxa de amostragem
duracao = 5; % duração da gravação em segundos
Ta=1/fs;
% Gravar o sinal de áudio
disp('Tocar uma corda da guitarra para afinar...');
% gravacao = audiorecorder(fs, 16, 1);
% recordblocking(gravacao, duracao);
% audio = getaudiodata(gravacao);
 % substituir pelo caminho do arquivo desejado
[audio, fs] = audioread("110 Hz Test Tone [TubeRipper.com].wav");
% Calcular a FFT do sinal de áudio
N = length(audio);
Y = fft(audio);
Y_mag = abs(Y(1:N/2+1));
f = fs*(0:N/2)/N;

% Encontrar a frequência dominante
[freq_max, index_max] = max(Y_mag);
freq_dom = f(index_max)

% Afinar a corda correspondente
%% sinal ouvido
figure(1)
% audio
t=0:Ta:(length(audio)-1)*Ta;
plot(t,audio)

% determinação da frequência dominante
figure(2)
plot(f,Y_mag);











