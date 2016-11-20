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
.field final mExtras:Landroid/os/Bundle;

.field final mOptions:[Landroid/app/VoiceInteractor$PickOptionRequest$Option;

.field final mPrompt:Landroid/app/VoiceInteractor$Prompt;


# direct methods
.method public constructor <init>(Landroid/app/VoiceInteractor$Prompt;[Landroid/app/VoiceInteractor$PickOptionRequest$Option;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "prompt"    # Landroid/app/VoiceInteractor$Prompt;
    .param p2, "options"    # [Landroid/app/VoiceInteractor$PickOptionRequest$Option;
    .param p3, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 522
    invoke-direct {p0}, Landroid/app/VoiceInteractor$Request;-><init>()V

    #@3
    .line 524
    iput-object p1, p0, Landroid/app/VoiceInteractor$PickOptionRequest;->mPrompt:Landroid/app/VoiceInteractor$Prompt;

    #@5
    .line 525
    iput-object p2, p0, Landroid/app/VoiceInteractor$PickOptionRequest;->mOptions:[Landroid/app/VoiceInteractor$PickOptionRequest$Option;

    #@7
    .line 526
    iput-object p3, p0, Landroid/app/VoiceInteractor$PickOptionRequest;->mExtras:Landroid/os/Bundle;

    #@9
    .line 523
    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;[Landroid/app/VoiceInteractor$PickOptionRequest$Option;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "prompt"    # Ljava/lang/CharSequence;
    .param p2, "options"    # [Landroid/app/VoiceInteractor$PickOptionRequest$Option;
    .param p3, "extras"    # Landroid/os/Bundle;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 537
    invoke-direct {p0}, Landroid/app/VoiceInteractor$Request;-><init>()V

    #@4
    .line 538
    if-eqz p1, :cond_0

    #@6
    new-instance v0, Landroid/app/VoiceInteractor$Prompt;

    #@8
    invoke-direct {v0, p1}, Landroid/app/VoiceInteractor$Prompt;-><init>(Ljava/lang/CharSequence;)V

    #@b
    :cond_0
    iput-object v0, p0, Landroid/app/VoiceInteractor$PickOptionRequest;->mPrompt:Landroid/app/VoiceInteractor$Prompt;

    #@d
    .line 539
    iput-object p2, p0, Landroid/app/VoiceInteractor$PickOptionRequest;->mOptions:[Landroid/app/VoiceInteractor$PickOptionRequest$Option;

    #@f
    .line 540
    iput-object p3, p0, Landroid/app/VoiceInteractor$PickOptionRequest;->mExtras:Landroid/os/Bundle;

    #@11
    .line 537
    return-void
.end method


# virtual methods
.method dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "fd"    # Ljava/io/FileDescriptor;
    .param p3, "writer"    # Ljava/io/PrintWriter;
    .param p4, "args"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 558
    invoke-super {p0, p1, p2, p3, p4}, Landroid/app/VoiceInteractor$Request;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    #@3
    .line 559
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@6
    const-string/jumbo v3, "mPrompt="

    #@9
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@c
    iget-object v3, p0, Landroid/app/VoiceInteractor$PickOptionRequest;->mPrompt:Landroid/app/VoiceInteractor$Prompt;

    #@e
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@11
    .line 560
    iget-object v3, p0, Landroid/app/VoiceInteractor$PickOptionRequest;->mOptions:[Landroid/app/VoiceInteractor$PickOptionRequest$Option;

    #@13
    if-eqz v3, :cond_2

    #@15
    .line 561
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@18
    const-string/jumbo v3, "Options:"

    #@1b
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@1e
    .line 562
    const/4 v0, 0x0

    #@1f
    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Landroid/app/VoiceInteractor$PickOptionRequest;->mOptions:[Landroid/app/VoiceInteractor$PickOptionRequest$Option;

    #@21
    array-length v3, v3

    #@22
    if-ge v0, v3, :cond_2

    #@24
    .line 563
    iget-object v3, p0, Landroid/app/VoiceInteractor$PickOptionRequest;->mOptions:[Landroid/app/VoiceInteractor$PickOptionRequest$Option;

    #@26
    aget-object v2, v3, v0

    #@28
    .line 564
    .local v2, "op":Landroid/app/VoiceInteractor$PickOptionRequest$Option;
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@2b
    const-string/jumbo v3, "  #"

    #@2e
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@31
    invoke-virtual {p3, v0}, Ljava/io/PrintWriter;->print(I)V

    #@34
    const-string/jumbo v3, ":"

    #@37
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@3a
    .line 565
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@3d
    const-string/jumbo v3, "    mLabel="

    #@40
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@43
    iget-object v3, v2, Landroid/app/VoiceInteractor$PickOptionRequest$Option;->mLabel:Ljava/lang/CharSequence;

    #@45
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@48
    .line 566
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@4b
    const-string/jumbo v3, "    mIndex="

    #@4e
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@51
    iget v3, v2, Landroid/app/VoiceInteractor$PickOptionRequest$Option;->mIndex:I

    #@53
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(I)V

    #@56
    .line 567
    iget-object v3, v2, Landroid/app/VoiceInteractor$PickOptionRequest$Option;->mSynonyms:Ljava/util/ArrayList;

    #@58
    if-eqz v3, :cond_0

    #@5a
    iget-object v3, v2, Landroid/app/VoiceInteractor$PickOptionRequest$Option;->mSynonyms:Ljava/util/ArrayList;

    #@5c
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@5f
    move-result v3

    #@60
    if-lez v3, :cond_0

    #@62
    .line 568
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@65
    const-string/jumbo v3, "    Synonyms:"

    #@68
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    #@6b
    .line 569
    const/4 v1, 0x0

    #@6c
    .local v1, "j":I
    :goto_1
    iget-object v3, v2, Landroid/app/VoiceInteractor$PickOptionRequest$Option;->mSynonyms:Ljava/util/ArrayList;

    #@6e
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    #@71
    move-result v3

    #@72
    if-ge v1, v3, :cond_0

    #@74
    .line 570
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@77
    const-string/jumbo v3, "      #"

    #@7a
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@7d
    invoke-virtual {p3, v1}, Ljava/io/PrintWriter;->print(I)V

    #@80
    .line 571
    const-string/jumbo v3, ": "

    #@83
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@86
    iget-object v3, v2, Landroid/app/VoiceInteractor$PickOptionRequest$Option;->mSynonyms:Ljava/util/ArrayList;

    #@88
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@8b
    move-result-object v3

    #@8c
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@8f
    .line 569
    add-int/lit8 v1, v1, 0x1

    #@91
    goto :goto_1

    #@92
    .line 574
    .end local v1    # "j":I
    :cond_0
    iget-object v3, v2, Landroid/app/VoiceInteractor$PickOptionRequest$Option;->mExtras:Landroid/os/Bundle;

    #@94
    if-eqz v3, :cond_1

    #@96
    .line 575
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@99
    const-string/jumbo v3, "    mExtras="

    #@9c
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@9f
    .line 576
    iget-object v3, v2, Landroid/app/VoiceInteractor$PickOptionRequest$Option;->mExtras:Landroid/os/Bundle;

    #@a1
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@a4
    .line 562
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@a6
    goto/16 :goto_0

    #@a8
    .line 580
    .end local v0    # "i":I
    .end local v2    # "op":Landroid/app/VoiceInteractor$PickOptionRequest$Option;
    :cond_2
    iget-object v3, p0, Landroid/app/VoiceInteractor$PickOptionRequest;->mExtras:Landroid/os/Bundle;

    #@aa
    if-eqz v3, :cond_3

    #@ac
    .line 581
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@af
    const-string/jumbo v3, "mExtras="

    #@b2
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    #@b5
    iget-object v3, p0, Landroid/app/VoiceInteractor$PickOptionRequest;->mExtras:Landroid/os/Bundle;

    #@b7
    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    #@ba
    .line 557
    :cond_3
    return-void
.end method

.method getRequestTypeName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 586
    const-string/jumbo v0, "PickOption"

    #@3
    return-object v0
.end method

.method public onPickOptionResult(Z[Landroid/app/VoiceInteractor$PickOptionRequest$Option;Landroid/os/Bundle;)V
    .locals 0
    .param p1, "finished"    # Z
    .param p2, "selections"    # [Landroid/app/VoiceInteractor$PickOptionRequest$Option;
    .param p3, "result"    # Landroid/os/Bundle;

    #@0
    .prologue
    .line 554
    return-void
.end method

.method submit(Lcom/android/internal/app/IVoiceInteractor;Ljava/lang/String;Lcom/android/internal/app/IVoiceInteractorCallback;)Lcom/android/internal/app/IVoiceInteractorRequest;
    .locals 6
    .param p1, "interactor"    # Lcom/android/internal/app/IVoiceInteractor;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "callback"    # Lcom/android/internal/app/IVoiceInteractorCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 591
    iget-object v3, p0, Landroid/app/VoiceInteractor$PickOptionRequest;->mPrompt:Landroid/app/VoiceInteractor$Prompt;

    #@2
    iget-object v4, p0, Landroid/app/VoiceInteractor$PickOptionRequest;->mOptions:[Landroid/app/VoiceInteractor$PickOptionRequest$Option;

    #@4
    iget-object v5, p0, Landroid/app/VoiceInteractor$PickOptionRequest;->mExtras:Landroid/os/Bundle;

    #@6
    move-object v0, p1

    #@7
    move-object v1, p2

    #@8
    move-object v2, p3

    #@9
    invoke-interface/range {v0 .. v5}, Lcom/android/internal/app/IVoiceInteractor;->startPickOption(Ljava/lang/String;Lcom/android/internal/app/IVoiceInteractorCallback;Landroid/app/VoiceInteractor$Prompt;[Landroid/app/VoiceInteractor$PickOptionRequest$Option;Landroid/os/Bundle;)Lcom/android/internal/app/IVoiceInteractorRequest;

    #@c
    move-result-object v0

    #@d
    return-object v0
.end method
