close all;

letter=imread('A_test.png');%carichiamo nella variabile LETTER l'immagine da testare
letter=cut(letter);

valprob=0;  %resetto la probsbilit� ad ogni tentativo 

for i=1:100     %ciclo for che scorre tutte le righe (i) e le colonne (j) dell'immagine di prova 
    for j=1:100
        valprob= valprob+ letter(i,j)*prob(i,j); %viene aggiornata la probabilit� VALPROB con il suo valore 
    end                                          %+ il valore di ogni pixel dell'immagine di prova * la probabilit� data dai campioni
end

valprob
        