.class Landroid/speech/tts/ITextToSpeechService$Stub$Proxy;
.super Ljava/lang/Object;
.source "ITextToSpeechService.java"

# interfaces
.implements Landroid/speech/tts/ITextToSpeechService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/speech/tts/ITextToSpeechService$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .locals 0
    .param p1, "remote"    # Landroid/os/IBinder;

    #@0
    .prologue
    .line 284
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 286
    iput-object p1, p0, Landroid/speech/tts/ITextToSpeechService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@5
    .line 284
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    #@0
    .prologue
    .line 290
    iget-object v0, p0, Landroid/speech/tts/ITextToSpeechService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2
    return-object v0
.end method

.method public getClientDefaultLanguage()[Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 548
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 549
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 552
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.speech.tts.ITextToSpeechService"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 553
    iget-object v3, p0, Landroid/speech/tts/ITextToSpeechService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v4, 0x8

    #@12
    const/4 v5, 0x0

    #@13
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 554
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@19
    .line 555
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1c
    move-result-object v2

    #@1d
    .line 558
    .local v2, "_result":[Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@20
    .line 559
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@23
    .line 561
    return-object v2

    #@24
    .line 557
    .end local v2    # "_result":[Ljava/lang/String;
    :catchall_0
    move-exception v3

    #@25
    .line 558
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@28
    .line 559
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 557
    throw v3
.end method

.method public getDefaultVoiceNameFor(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "lang"    # Ljava/lang/String;
    .param p2, "country"    # Ljava/lang/String;
    .param p3, "variant"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 754
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 755
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 758
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.speech.tts.ITextToSpeechService"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 759
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 760
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@14
    .line 761
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@17
    .line 762
    iget-object v3, p0, Landroid/speech/tts/ITextToSpeechService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@19
    const/16 v4, 0xf

    #@1b
    const/4 v5, 0x0

    #@1c
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1f
    .line 763
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@22
    .line 764
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@25
    move-result-object v2

    #@26
    .line 767
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 768
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 770
    return-object v2

    #@2d
    .line 766
    .end local v2    # "_result":Ljava/lang/String;
    :catchall_0
    move-exception v3

    #@2e
    .line 767
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@31
    .line 768
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@34
    .line 766
    throw v3
.end method

.method public getFeaturesForLanguage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 6
    .param p1, "lang"    # Ljava/lang/String;
    .param p2, "country"    # Ljava/lang/String;
    .param p3, "variant"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 611
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 612
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 615
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.speech.tts.ITextToSpeechService"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 616
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 617
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@14
    .line 618
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@17
    .line 619
    iget-object v3, p0, Landroid/speech/tts/ITextToSpeechService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@19
    const/16 v4, 0xa

    #@1b
    const/4 v5, 0x0

    #@1c
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1f
    .line 620
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@22
    .line 621
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@25
    move-result-object v2

    #@26
    .line 624
    .local v2, "_result":[Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 625
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 627
    return-object v2

    #@2d
    .line 623
    .end local v2    # "_result":[Ljava/lang/String;
    :catchall_0
    move-exception v3

    #@2e
    .line 624
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@31
    .line 625
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@34
    .line 623
    throw v3
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 294
    const-string/jumbo v0, "android.speech.tts.ITextToSpeechService"

    #@3
    return-object v0
.end method

.method public getLanguage()[Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 521
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 522
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 525
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.speech.tts.ITextToSpeechService"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 526
    iget-object v3, p0, Landroid/speech/tts/ITextToSpeechService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/4 v4, 0x7

    #@11
    const/4 v5, 0x0

    #@12
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@15
    .line 527
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@18
    .line 528
    invoke-virtual {v1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    move-result-object v2

    #@1c
    .line 531
    .local v2, "_result":[Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@1f
    .line 532
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 534
    return-object v2

    #@23
    .line 530
    .end local v2    # "_result":[Ljava/lang/String;
    :catchall_0
    move-exception v3

    #@24
    .line 531
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@27
    .line 532
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 530
    throw v3
.end method

.method public getVoices()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/speech/tts/Voice;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 694
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 695
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 698
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.speech.tts.ITextToSpeechService"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 699
    iget-object v3, p0, Landroid/speech/tts/ITextToSpeechService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/16 v4, 0xd

    #@12
    const/4 v5, 0x0

    #@13
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@16
    .line 700
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@19
    .line 701
    sget-object v3, Landroid/speech/tts/Voice;->CREATOR:Landroid/os/Parcelable$Creator;

    #@1b
    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1e
    move-result-object v2

    #@1f
    .line 704
    .local v2, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/speech/tts/Voice;>;"
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 705
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 707
    return-object v2

    #@26
    .line 703
    .end local v2    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/speech/tts/Voice;>;"
    :catchall_0
    move-exception v3

    #@27
    .line 704
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 705
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 703
    throw v3
.end method

.method public isLanguageAvailable(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 6
    .param p1, "lang"    # Ljava/lang/String;
    .param p2, "country"    # Ljava/lang/String;
    .param p3, "variant"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 578
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 579
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 582
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.speech.tts.ITextToSpeechService"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 583
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@11
    .line 584
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@14
    .line 585
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@17
    .line 586
    iget-object v3, p0, Landroid/speech/tts/ITextToSpeechService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@19
    const/16 v4, 0x9

    #@1b
    const/4 v5, 0x0

    #@1c
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1f
    .line 587
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@22
    .line 588
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@25
    move-result v2

    #@26
    .line 591
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 592
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 594
    return v2

    #@2d
    .line 590
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    #@2e
    .line 591
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@31
    .line 592
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@34
    .line 590
    throw v3
.end method

.method public isSpeaking()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 470
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 471
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 474
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.speech.tts.ITextToSpeechService"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 475
    iget-object v3, p0, Landroid/speech/tts/ITextToSpeechService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@10
    const/4 v4, 0x5

    #@11
    const/4 v5, 0x0

    #@12
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@15
    .line 476
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@18
    .line 477
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1b
    move-result v3

    #@1c
    if-eqz v3, :cond_0

    #@1e
    const/4 v2, 0x1

    #@1f
    .line 480
    .local v2, "_result":Z
    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 481
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 483
    return v2

    #@26
    .line 477
    .end local v2    # "_result":Z
    :cond_0
    const/4 v2, 0x0

    #@27
    .restart local v2    # "_result":Z
    goto :goto_0

    #@28
    .line 479
    .end local v2    # "_result":Z
    :catchall_0
    move-exception v3

    #@29
    .line 480
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 481
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 479
    throw v3
.end method

.method public loadLanguage(Landroid/os/IBinder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 6
    .param p1, "caller"    # Landroid/os/IBinder;
    .param p2, "lang"    # Ljava/lang/String;
    .param p3, "country"    # Ljava/lang/String;
    .param p4, "variant"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 646
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 647
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 650
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.speech.tts.ITextToSpeechService"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 651
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@11
    .line 652
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@14
    .line 653
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@17
    .line 654
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1a
    .line 655
    iget-object v3, p0, Landroid/speech/tts/ITextToSpeechService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1c
    const/16 v4, 0xb

    #@1e
    const/4 v5, 0x0

    #@1f
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@22
    .line 656
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@25
    .line 657
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@28
    move-result v2

    #@29
    .line 660
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 661
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2f
    .line 663
    return v2

    #@30
    .line 659
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    #@31
    .line 660
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@34
    .line 661
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@37
    .line 659
    throw v3
.end method

.method public loadVoice(Landroid/os/IBinder;Ljava/lang/String;)I
    .locals 6
    .param p1, "caller"    # Landroid/os/IBinder;
    .param p2, "voiceName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 719
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 720
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 723
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.speech.tts.ITextToSpeechService"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 724
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@11
    .line 725
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@14
    .line 726
    iget-object v3, p0, Landroid/speech/tts/ITextToSpeechService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@16
    const/16 v4, 0xe

    #@18
    const/4 v5, 0x0

    #@19
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@1c
    .line 727
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1f
    .line 728
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    move-result v2

    #@23
    .line 731
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@26
    .line 732
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 734
    return v2

    #@2a
    .line 730
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    #@2b
    .line 731
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2e
    .line 732
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@31
    .line 730
    throw v3
.end method

.method public playAudio(Landroid/os/IBinder;Landroid/net/Uri;ILandroid/os/Bundle;Ljava/lang/String;)I
    .locals 6
    .param p1, "callingInstance"    # Landroid/os/IBinder;
    .param p2, "audioUri"    # Landroid/net/Uri;
    .param p3, "queueMode"    # I
    .param p4, "params"    # Landroid/os/Bundle;
    .param p5, "utteranceId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 403
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 404
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 407
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.speech.tts.ITextToSpeechService"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 408
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@11
    .line 409
    if-eqz p2, :cond_0

    #@13
    .line 410
    const/4 v3, 0x1

    #@14
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@17
    .line 411
    const/4 v3, 0x0

    #@18
    invoke-virtual {p2, v0, v3}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    #@1b
    .line 416
    :goto_0
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@1e
    .line 417
    if-eqz p4, :cond_1

    #@20
    .line 418
    const/4 v3, 0x1

    #@21
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@24
    .line 419
    const/4 v3, 0x0

    #@25
    invoke-virtual {p4, v0, v3}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    #@28
    .line 424
    :goto_1
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@2b
    .line 425
    iget-object v3, p0, Landroid/speech/tts/ITextToSpeechService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2d
    const/4 v4, 0x3

    #@2e
    const/4 v5, 0x0

    #@2f
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@32
    .line 426
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@35
    .line 427
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@38
    move-result v2

    #@39
    .line 430
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3c
    .line 431
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3f
    .line 433
    return v2

    #@40
    .line 414
    .end local v2    # "_result":I
    :cond_0
    const/4 v3, 0x0

    #@41
    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@44
    goto :goto_0

    #@45
    .line 429
    :catchall_0
    move-exception v3

    #@46
    .line 430
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@49
    .line 431
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@4c
    .line 429
    throw v3

    #@4d
    .line 422
    :cond_1
    const/4 v3, 0x0

    #@4e
    :try_start_2
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@51
    goto :goto_1
.end method

.method public playSilence(Landroid/os/IBinder;JILjava/lang/String;)I
    .locals 6
    .param p1, "callingInstance"    # Landroid/os/IBinder;
    .param p2, "duration"    # J
    .param p4, "queueMode"    # I
    .param p5, "utteranceId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 446
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 447
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 450
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.speech.tts.ITextToSpeechService"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 451
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@11
    .line 452
    invoke-virtual {v0, p2, p3}, Landroid/os/Parcel;->writeLong(J)V

    #@14
    .line 453
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    #@17
    .line 454
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@1a
    .line 455
    iget-object v3, p0, Landroid/speech/tts/ITextToSpeechService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1c
    const/4 v4, 0x4

    #@1d
    const/4 v5, 0x0

    #@1e
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@21
    .line 456
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@24
    .line 457
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@27
    move-result v2

    #@28
    .line 460
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2b
    .line 461
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2e
    .line 463
    return v2

    #@2f
    .line 459
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    #@30
    .line 460
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@33
    .line 461
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@36
    .line 459
    throw v3
.end method

.method public setCallback(Landroid/os/IBinder;Landroid/speech/tts/ITextToSpeechCallback;)V
    .locals 5
    .param p1, "caller"    # Landroid/os/IBinder;
    .param p2, "cb"    # Landroid/speech/tts/ITextToSpeechCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 675
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@4
    move-result-object v0

    #@5
    .line 676
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@8
    move-result-object v1

    #@9
    .line 678
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.speech.tts.ITextToSpeechService"

    #@c
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@f
    .line 679
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@12
    .line 680
    if-eqz p2, :cond_0

    #@14
    invoke-interface {p2}, Landroid/speech/tts/ITextToSpeechCallback;->asBinder()Landroid/os/IBinder;

    #@17
    move-result-object v2

    #@18
    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@1b
    .line 681
    iget-object v2, p0, Landroid/speech/tts/ITextToSpeechService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@1d
    const/16 v3, 0xc

    #@1f
    const/4 v4, 0x0

    #@20
    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@23
    .line 682
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@26
    .line 685
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@29
    .line 686
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2c
    .line 673
    return-void

    #@2d
    .line 684
    :catchall_0
    move-exception v2

    #@2e
    .line 685
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@31
    .line 686
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@34
    .line 684
    throw v2
.end method

.method public speak(Landroid/os/IBinder;Ljava/lang/CharSequence;ILandroid/os/Bundle;Ljava/lang/String;)I
    .locals 6
    .param p1, "callingInstance"    # Landroid/os/IBinder;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "queueMode"    # I
    .param p4, "params"    # Landroid/os/Bundle;
    .param p5, "utteranceId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 308
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 309
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 312
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.speech.tts.ITextToSpeechService"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 313
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@11
    .line 314
    if-eqz p2, :cond_0

    #@13
    .line 315
    const/4 v3, 0x1

    #@14
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@17
    .line 316
    const/4 v3, 0x0

    #@18
    invoke-static {p2, v0, v3}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    #@1b
    .line 321
    :goto_0
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    #@1e
    .line 322
    if-eqz p4, :cond_1

    #@20
    .line 323
    const/4 v3, 0x1

    #@21
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@24
    .line 324
    const/4 v3, 0x0

    #@25
    invoke-virtual {p4, v0, v3}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    #@28
    .line 329
    :goto_1
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@2b
    .line 330
    iget-object v3, p0, Landroid/speech/tts/ITextToSpeechService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@2d
    const/4 v4, 0x1

    #@2e
    const/4 v5, 0x0

    #@2f
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@32
    .line 331
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@35
    .line 332
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@38
    move-result v2

    #@39
    .line 335
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@3c
    .line 336
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@3f
    .line 338
    return v2

    #@40
    .line 319
    .end local v2    # "_result":I
    :cond_0
    const/4 v3, 0x0

    #@41
    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@44
    goto :goto_0

    #@45
    .line 334
    :catchall_0
    move-exception v3

    #@46
    .line 335
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@49
    .line 336
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@4c
    .line 334
    throw v3

    #@4d
    .line 327
    :cond_1
    const/4 v3, 0x0

    #@4e
    :try_start_2
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@51
    goto :goto_1
.end method

.method public stop(Landroid/os/IBinder;)I
    .locals 6
    .param p1, "callingInstance"    # Landroid/os/IBinder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 494
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 495
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 498
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.speech.tts.ITextToSpeechService"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 499
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@11
    .line 500
    iget-object v3, p0, Landroid/speech/tts/ITextToSpeechService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@13
    const/4 v4, 0x6

    #@14
    const/4 v5, 0x0

    #@15
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@18
    .line 501
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@1b
    .line 502
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1e
    move-result v2

    #@1f
    .line 505
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@22
    .line 506
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@25
    .line 508
    return v2

    #@26
    .line 504
    .end local v2    # "_result":I
    :catchall_0
    move-exception v3

    #@27
    .line 505
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@2a
    .line 506
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@2d
    .line 504
    throw v3
.end method

.method public synthesizeToFileDescriptor(Landroid/os/IBinder;Ljava/lang/CharSequence;Landroid/os/ParcelFileDescriptor;Landroid/os/Bundle;Ljava/lang/String;)I
    .locals 6
    .param p1, "callingInstance"    # Landroid/os/IBinder;
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "fileDescriptor"    # Landroid/os/ParcelFileDescriptor;
    .param p4, "params"    # Landroid/os/Bundle;
    .param p5, "utteranceId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    #@0
    .prologue
    .line 353
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@3
    move-result-object v0

    #@4
    .line 354
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    #@7
    move-result-object v1

    #@8
    .line 357
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_0
    const-string/jumbo v3, "android.speech.tts.ITextToSpeechService"

    #@b
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    #@e
    .line 358
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    #@11
    .line 359
    if-eqz p2, :cond_0

    #@13
    .line 360
    const/4 v3, 0x1

    #@14
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@17
    .line 361
    const/4 v3, 0x0

    #@18
    invoke-static {p2, v0, v3}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    #@1b
    .line 366
    :goto_0
    if-eqz p3, :cond_1

    #@1d
    .line 367
    const/4 v3, 0x1

    #@1e
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@21
    .line 368
    const/4 v3, 0x0

    #@22
    invoke-virtual {p3, v0, v3}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    #@25
    .line 373
    :goto_1
    if-eqz p4, :cond_2

    #@27
    .line 374
    const/4 v3, 0x1

    #@28
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@2b
    .line 375
    const/4 v3, 0x0

    #@2c
    invoke-virtual {p4, v0, v3}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    #@2f
    .line 380
    :goto_2
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@32
    .line 381
    iget-object v3, p0, Landroid/speech/tts/ITextToSpeechService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    #@34
    const/4 v4, 0x2

    #@35
    const/4 v5, 0x0

    #@36
    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    #@39
    .line 382
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    #@3c
    .line 383
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3f
    move-result v2

    #@40
    .line 386
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@43
    .line 387
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@46
    .line 389
    return v2

    #@47
    .line 364
    .end local v2    # "_result":I
    :cond_0
    const/4 v3, 0x0

    #@48
    :try_start_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@4b
    goto :goto_0

    #@4c
    .line 385
    :catchall_0
    move-exception v3

    #@4d
    .line 386
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    #@50
    .line 387
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    #@53
    .line 385
    throw v3

    #@54
    .line 371
    :cond_1
    const/4 v3, 0x0

    #@55
    :try_start_2
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    #@58
    goto :goto_1

    #@59
    .line 378
    :cond_2
    const/4 v3, 0x0

    #@5a
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@5d
    goto :goto_2
.end method
