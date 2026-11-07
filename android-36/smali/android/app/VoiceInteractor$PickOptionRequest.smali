.class public Landroid/app/VoiceInteractor$PickOptionRequest;
.super Landroid/app/VoiceInteractor$Request;
.source "VoiceInteractor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/VoiceInteractor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PickOptionRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/VoiceInteractor$PickOptionRequest$Option;
    }
.end annotation


# instance fields
.field final greylist-max-o mExtras:Landroid/os/Bundle;

.field final greylist-max-o mOptions:[Landroid/app/VoiceInteractor$PickOptionRequest$Option;

.field final greylist-max-o mPrompt:Landroid/app/VoiceInteractor$Prompt;


# direct methods
.method public constructor whitelist <init>(Landroid/app/VoiceInteractor$Prompt;[Landroid/app/VoiceInteractor$PickOptionRequest$Option;Landroid/os/Bundle;)V
    .registers 4
    .param p1, "prompt"    # Landroid/app/VoiceInteractor$Prompt;
    .param p2, "options"    # [Landroid/app/VoiceInteractor$PickOptionRequest$Option;
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 541
    invoke-direct {p0}, Landroid/app/VoiceInteractor$Request;-><init>()V

    .line 542
    iput-object p1, p0, Landroid/app/VoiceInteractor$PickOptionRequest;->mPrompt:Landroid/app/VoiceInteractor$Prompt;

    .line 543
    iput-object p2, p0, Landroid/app/VoiceInteractor$PickOptionRequest;->mOptions:[Landroid/app/VoiceInteractor$PickOptionRequest$Option;

    .line 544
    iput-object p3, p0, Landroid/app/VoiceInteractor$PickOptionRequest;->mExtras:Landroid/os/Bundle;

    .line 545
    return-void
.end method

.method public constructor greylist-max-o <init>(Ljava/lang/CharSequence;[Landroid/app/VoiceInteractor$PickOptionRequest$Option;Landroid/os/Bundle;)V
    .registers 5
    .param p1, "prompt"    # Ljava/lang/CharSequence;
    .param p2, "options"    # [Landroid/app/VoiceInteractor$PickOptionRequest$Option;
    .param p3, "extras"    # Landroid/os/Bundle;

    .line 555
    invoke-direct {p0}, Landroid/app/VoiceInteractor$Request;-><init>()V

    .line 556
    if-eqz p1, :cond_b

    new-instance v0, Landroid/app/VoiceInteractor$Prompt;

    invoke-direct {v0, p1}, Landroid/app/VoiceInteractor$Prompt;-><init>(Ljava/lang/CharSequence;)V

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    iput-object v0, p0, Landroid/app/VoiceInteractor$PickOptionRequest;->mPrompt:Landroid/app/VoiceInteractor$Prompt;

    .line 557
    iput-object p2, p0, Landroid/app/VoiceInteractor$PickOptionRequest;->mOptions:[Landroid/app/VoiceInteractor$PickOptionRequest$Option;

    .line 558
    iput-object p3, p0, Landroid/app/VoiceInteractor$PickOptionRequest;->mExtras:Landroid/os/Bundle;

    .line 559
    return-void
.end method


# virtual methods
.method greylist-max-o dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 9
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "writer"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    .line 576
    invoke-super {p0, p1, p2, p3, p4}, Landroid/app/VoiceInteractor$Request;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 577
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mPrompt="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/VoiceInteractor$PickOptionRequest;->mPrompt:Landroid/app/VoiceInteractor$Prompt;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 578
    iget-object v0, p0, Landroid/app/VoiceInteractor$PickOptionRequest;->mOptions:[Landroid/app/VoiceInteractor$PickOptionRequest$Option;

    if-eqz v0, :cond_9e

    .line 579
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Options:"

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 580
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1e
    iget-object v1, p0, Landroid/app/VoiceInteractor$PickOptionRequest;->mOptions:[Landroid/app/VoiceInteractor$PickOptionRequest$Option;

    array-length v1, v1

    if-ge v0, v1, :cond_9e

    .line 581
    iget-object v1, p0, Landroid/app/VoiceInteractor$PickOptionRequest;->mOptions:[Landroid/app/VoiceInteractor$PickOptionRequest$Option;

    aget-object v1, v1, v0

    .line 582
    .local v1, "op":Landroid/app/VoiceInteractor$PickOptionRequest$Option;
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  #"

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v2, ":"

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 583
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "    mLabel="

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, v1, Landroid/app/VoiceInteractor$PickOptionRequest$Option;->mLabel:Ljava/lang/CharSequence;

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 584
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "    mIndex="

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, v1, Landroid/app/VoiceInteractor$PickOptionRequest$Option;->mIndex:I

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 585
    iget-object v2, v1, Landroid/app/VoiceInteractor$PickOptionRequest$Option;->mSynonyms:Ljava/util/ArrayList;

    if-eqz v2, :cond_8a

    iget-object v2, v1, Landroid/app/VoiceInteractor$PickOptionRequest$Option;->mSynonyms:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_8a

    .line 586
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "    Synonyms:"

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 587
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_66
    iget-object v3, v1, Landroid/app/VoiceInteractor$PickOptionRequest$Option;->mSynonyms:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_8a

    .line 588
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "      #"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 589
    const-string v3, ": "

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v1, Landroid/app/VoiceInteractor$PickOptionRequest$Option;->mSynonyms:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 587
    add-int/lit8 v2, v2, 0x1

    goto :goto_66

    .line 592
    .end local v2    # "j":I
    :cond_8a
    iget-object v2, v1, Landroid/app/VoiceInteractor$PickOptionRequest$Option;->mExtras:Landroid/os/Bundle;

    if-eqz v2, :cond_9b

    .line 593
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "    mExtras="

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 594
    iget-object v2, v1, Landroid/app/VoiceInteractor$PickOptionRequest$Option;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p3, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 580
    .end local v1    # "op":Landroid/app/VoiceInteractor$PickOptionRequest$Option;
    :cond_9b
    add-int/lit8 v0, v0, 0x1

    goto :goto_1e

    .line 598
    .end local v0    # "i":I
    :cond_9e
    iget-object v0, p0, Landroid/app/VoiceInteractor$PickOptionRequest;->mExtras:Landroid/os/Bundle;

    if-eqz v0, :cond_b0

    .line 599
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mExtras="

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/VoiceInteractor$PickOptionRequest;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 601
    :cond_b0
    return-void
.end method

.method greylist-max-o getRequestTypeName()Ljava/lang/String;
    .registers 2

    .line 604
    const-string v0, "PickOption"

    return-object v0
.end method

.method public whitelist onPickOptionResult(Z[Landroid/app/VoiceInteractor$PickOptionRequest$Option;Landroid/os/Bundle;)V
    .registers 4
    .param p1, "finished"    # Z
    .param p2, "selections"    # [Landroid/app/VoiceInteractor$PickOptionRequest$Option;
    .param p3, "result"    # Landroid/os/Bundle;

    .line 573
    return-void
.end method

.method greylist-max-o submit(Lcom/android/internal/app/IVoiceInteractor;Ljava/lang/String;Lcom/android/internal/app/IVoiceInteractorCallback;)Lcom/android/internal/app/IVoiceInteractorRequest;
    .registers 10
    .param p1, "interactor"    # Lcom/android/internal/app/IVoiceInteractor;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/android/internal/app/IVoiceInteractorCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 609
    iget-object v3, p0, Landroid/app/VoiceInteractor$PickOptionRequest;->mPrompt:Landroid/app/VoiceInteractor$Prompt;

    iget-object v4, p0, Landroid/app/VoiceInteractor$PickOptionRequest;->mOptions:[Landroid/app/VoiceInteractor$PickOptionRequest$Option;

    iget-object v5, p0, Landroid/app/VoiceInteractor$PickOptionRequest;->mExtras:Landroid/os/Bundle;

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    .end local p1    # "interactor":Lcom/android/internal/app/IVoiceInteractor;
    .end local p2    # "packageName":Ljava/lang/String;
    .end local p3    # "callback":Lcom/android/internal/app/IVoiceInteractorCallback;
    .local v0, "interactor":Lcom/android/internal/app/IVoiceInteractor;
    .local v1, "packageName":Ljava/lang/String;
    .local v2, "callback":Lcom/android/internal/app/IVoiceInteractorCallback;
    invoke-interface/range {v0 .. v5}, Lcom/android/internal/app/IVoiceInteractor;->startPickOption(Ljava/lang/String;Lcom/android/internal/app/IVoiceInteractorCallback;Landroid/app/VoiceInteractor$Prompt;[Landroid/app/VoiceInteractor$PickOptionRequest$Option;Landroid/os/Bundle;)Lcom/android/internal/app/IVoiceInteractorRequest;

    move-result-object p1

    return-object p1
.end method
