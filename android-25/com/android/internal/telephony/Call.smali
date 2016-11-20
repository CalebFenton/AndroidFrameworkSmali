.class public abstract Lcom/android/internal/telephony/Call;
.super Ljava/lang/Object;
.source "Call.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/Call$SrvccState;,
        Lcom/android/internal/telephony/Call$State;
    }
.end annotation


# static fields
.field private static final synthetic -com-android-internal-telephony-DriverCall$StateSwitchesValues:[I


# instance fields
.field protected final LOG_TAG:Ljava/lang/String;

.field public mConnections:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/Connection;",
            ">;"
        }
    .end annotation
.end field

.field public mState:Lcom/android/internal/telephony/Call$State;


# direct methods
.method private static synthetic -getcom-android-internal-telephony-DriverCall$StateSwitchesValues()[I
    .locals 3

    #@0
    sget-object v0, Lcom/android/internal/telephony/Call;->-com-android-internal-telephony-DriverCall$StateSwitchesValues:[I

    #@2
    if-eqz v0, :cond_0

    #@4
    sget-object v0, Lcom/android/internal/telephony/Call;->-com-android-internal-telephony-DriverCall$StateSwitchesValues:[I

    #@6
    return-object v0

    #@7
    :cond_0
    invoke-static {}, Lcom/android/internal/telephony/DriverCall$State;->values()[Lcom/android/internal/telephony/DriverCall$State;

    #@a
    move-result-object v0

    #@b
    array-length v0, v0

    #@c
    new-array v0, v0, [I

    #@e
    :try_start_0
    sget-object v1, Lcom/android/internal/telephony/DriverCall$State;->ACTIVE:Lcom/android/internal/telephony/DriverCall$State;

    #@10
    invoke-virtual {v1}, Lcom/android/internal/telephony/DriverCall$State;->ordinal()I

    #@13
    move-result v1

    #@14
    const/4 v2, 0x1

    #@15
    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_5

    #@17
    :goto_0
    :try_start_1
    sget-object v1, Lcom/android/internal/telephony/DriverCall$State;->ALERTING:Lcom/android/internal/telephony/DriverCall$State;

    #@19
    invoke-virtual {v1}, Lcom/android/internal/telephony/DriverCall$State;->ordinal()I

    #@1c
    move-result v1

    #@1d
    const/4 v2, 0x2

    #@1e
    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_4

    #@20
    :goto_1
    :try_start_2
    sget-object v1, Lcom/android/internal/telephony/DriverCall$State;->DIALING:Lcom/android/internal/telephony/DriverCall$State;

    #@22
    invoke-virtual {v1}, Lcom/android/internal/telephony/DriverCall$State;->ordinal()I

    #@25
    move-result v1

    #@26
    const/4 v2, 0x3

    #@27
    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_3

    #@29
    :goto_2
    :try_start_3
    sget-object v1, Lcom/android/internal/telephony/DriverCall$State;->HOLDING:Lcom/android/internal/telephony/DriverCall$State;

    #@2b
    invoke-virtual {v1}, Lcom/android/internal/telephony/DriverCall$State;->ordinal()I

    #@2e
    move-result v1

    #@2f
    const/4 v2, 0x4

    #@30
    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_2

    #@32
    :goto_3
    :try_start_4
    sget-object v1, Lcom/android/internal/telephony/DriverCall$State;->INCOMING:Lcom/android/internal/telephony/DriverCall$State;

    #@34
    invoke-virtual {v1}, Lcom/android/internal/telephony/DriverCall$State;->ordinal()I

    #@37
    move-result v1

    #@38
    const/4 v2, 0x5

    #@39
    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_1

    #@3b
    :goto_4
    :try_start_5
    sget-object v1, Lcom/android/internal/telephony/DriverCall$State;->WAITING:Lcom/android/internal/telephony/DriverCall$State;

    #@3d
    invoke-virtual {v1}, Lcom/android/internal/telephony/DriverCall$State;->ordinal()I

    #@40
    move-result v1

    #@41
    const/4 v2, 0x6

    #@42
    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_0

    #@44
    :goto_5
    sput-object v0, Lcom/android/internal/telephony/Call;->-com-android-internal-telephony-DriverCall$StateSwitchesValues:[I

    #@46
    return-object v0

    #@47
    :catch_0
    move-exception v1

    #@48
    goto :goto_5

    #@49
    :catch_1
    move-exception v1

    #@4a
    goto :goto_4

    #@4b
    :catch_2
    move-exception v1

    #@4c
    goto :goto_3

    #@4d
    :catch_3
    move-exception v1

    #@4e
    goto :goto_2

    #@4f
    :catch_4
    move-exception v1

    #@50
    goto :goto_1

    #@51
    :catch_5
    move-exception v1

    #@52
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 30
    const-string/jumbo v0, "Call"

    #@6
    iput-object v0, p0, Lcom/android/internal/telephony/Call;->LOG_TAG:Ljava/lang/String;

    #@8
    .line 69
    sget-object v0, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    #@a
    iput-object v0, p0, Lcom/android/internal/telephony/Call;->mState:Lcom/android/internal/telephony/Call$State;

    #@c
    .line 71
    new-instance v0, Ljava/util/ArrayList;

    #@e
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@11
    iput-object v0, p0, Lcom/android/internal/telephony/Call;->mConnections:Ljava/util/ArrayList;

    #@13
    .line 29
    return-void
.end method

.method public static stateFromDCState(Lcom/android/internal/telephony/DriverCall$State;)Lcom/android/internal/telephony/Call$State;
    .locals 3
    .param p0, "dcState"    # Lcom/android/internal/telephony/DriverCall$State;

    #@0
    .prologue
    .line 52
    invoke-static {}, Lcom/android/internal/telephony/Call;->-getcom-android-internal-telephony-DriverCall$StateSwitchesValues()[I

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0}, Lcom/android/internal/telephony/DriverCall$State;->ordinal()I

    #@7
    move-result v1

    #@8
    aget v0, v0, v1

    #@a
    packed-switch v0, :pswitch_data_0

    #@d
    .line 59
    new-instance v0, Ljava/lang/RuntimeException;

    #@f
    new-instance v1, Ljava/lang/StringBuilder;

    #@11
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@14
    const-string/jumbo v2, "illegal call state:"

    #@17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1a
    move-result-object v1

    #@1b
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v1

    #@1f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@22
    move-result-object v1

    #@23
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@26
    throw v0

    #@27
    .line 53
    :pswitch_0
    sget-object v0, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    #@29
    return-object v0

    #@2a
    .line 54
    :pswitch_1
    sget-object v0, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    #@2c
    return-object v0

    #@2d
    .line 55
    :pswitch_2
    sget-object v0, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    #@2f
    return-object v0

    #@30
    .line 56
    :pswitch_3
    sget-object v0, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    #@32
    return-object v0

    #@33
    .line 57
    :pswitch_4
    sget-object v0, Lcom/android/internal/telephony/Call$State;->INCOMING:Lcom/android/internal/telephony/Call$State;

    #@35
    return-object v0

    #@36
    .line 58
    :pswitch_5
    sget-object v0, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    #@38
    return-object v0

    #@39
    .line 52
    nop

    #@3a
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method


# virtual methods
.method public clearDisconnected()V
    .locals 4

    #@0
    .prologue
    .line 265
    iget-object v2, p0, Lcom/android/internal/telephony/Call;->mConnections:Ljava/util/ArrayList;

    #@2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@5
    move-result v2

    #@6
    add-int/lit8 v1, v2, -0x1

    #@8
    .local v1, "i":I
    :goto_0
    if-ltz v1, :cond_1

    #@a
    .line 266
    iget-object v2, p0, Lcom/android/internal/telephony/Call;->mConnections:Ljava/util/ArrayList;

    #@c
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    #@f
    move-result-object v0

    #@10
    check-cast v0, Lcom/android/internal/telephony/Connection;

    #@12
    .line 267
    .local v0, "c":Lcom/android/internal/telephony/Connection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    #@15
    move-result-object v2

    #@16
    sget-object v3, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    #@18
    if-ne v2, v3, :cond_0

    #@1a
    .line 268
    iget-object v2, p0, Lcom/android/internal/telephony/Call;->mConnections:Ljava/util/ArrayList;

    #@1c
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    #@1f
    .line 265
    :cond_0
    add-int/lit8 v1, v1, -0x1

    #@21
    goto :goto_0

    #@22
    .line 272
    .end local v0    # "c":Lcom/android/internal/telephony/Connection;
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/Call;->mConnections:Ljava/util/ArrayList;

    #@24
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    #@27
    move-result v2

    #@28
    if-nez v2, :cond_2

    #@2a
    .line 273
    sget-object v2, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    #@2c
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/Call;->setState(Lcom/android/internal/telephony/Call$State;)V

    #@2f
    .line 264
    :cond_2
    return-void
.end method

.method public getConferenceParticipants()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telecom/ConferenceParticipant;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 122
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public abstract getConnections()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/Connection;",
            ">;"
        }
    .end annotation
.end method

.method public getEarliestConnectTime()J
    .locals 10

    #@0
    .prologue
    .line 192
    const-wide v6, 0x7fffffffffffffffL

    #@5
    .line 193
    .local v6, "time":J
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    #@8
    move-result-object v2

    #@9
    .line 195
    .local v2, "l":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    #@c
    move-result v8

    #@d
    if-nez v8, :cond_0

    #@f
    .line 196
    const-wide/16 v8, 0x0

    #@11
    return-wide v8

    #@12
    .line 199
    :cond_0
    const/4 v1, 0x0

    #@13
    .local v1, "i":I
    invoke-interface {v2}, Ljava/util/List;->size()I

    #@16
    move-result v3

    #@17
    .local v3, "s":I
    :goto_0
    if-ge v1, v3, :cond_2

    #@19
    .line 200
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@1c
    move-result-object v0

    #@1d
    check-cast v0, Lcom/android/internal/telephony/Connection;

    #@1f
    .line 203
    .local v0, "c":Lcom/android/internal/telephony/Connection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getConnectTime()J

    #@22
    move-result-wide v4

    #@23
    .line 205
    .local v4, "t":J
    cmp-long v8, v4, v6

    #@25
    if-gez v8, :cond_1

    #@27
    move-wide v6, v4

    #@28
    .line 199
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@2a
    goto :goto_0

    #@2b
    .line 208
    .end local v0    # "c":Lcom/android/internal/telephony/Connection;
    .end local v4    # "t":J
    :cond_2
    return-wide v6
.end method

.method public getEarliestConnection()Lcom/android/internal/telephony/Connection;
    .locals 10

    #@0
    .prologue
    .line 142
    const-wide v8, 0x7fffffffffffffffL

    #@5
    .line 144
    .local v8, "time":J
    const/4 v1, 0x0

    #@6
    .line 146
    .local v1, "earliest":Lcom/android/internal/telephony/Connection;
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    #@9
    move-result-object v3

    #@a
    .line 148
    .local v3, "l":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    #@d
    move-result v5

    #@e
    if-nez v5, :cond_0

    #@10
    .line 149
    const/4 v5, 0x0

    #@11
    return-object v5

    #@12
    .line 152
    :cond_0
    const/4 v2, 0x0

    #@13
    .local v2, "i":I
    invoke-interface {v3}, Ljava/util/List;->size()I

    #@16
    move-result v4

    #@17
    .end local v1    # "earliest":Lcom/android/internal/telephony/Connection;
    .local v4, "s":I
    :goto_0
    if-ge v2, v4, :cond_2

    #@19
    .line 153
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@1c
    move-result-object v0

    #@1d
    check-cast v0, Lcom/android/internal/telephony/Connection;

    #@1f
    .line 156
    .local v0, "c":Lcom/android/internal/telephony/Connection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    #@22
    move-result-wide v6

    #@23
    .line 158
    .local v6, "t":J
    cmp-long v5, v6, v8

    #@25
    if-gez v5, :cond_1

    #@27
    .line 159
    move-object v1, v0

    #@28
    .line 160
    .local v1, "earliest":Lcom/android/internal/telephony/Connection;
    move-wide v8, v6

    #@29
    .line 152
    .end local v1    # "earliest":Lcom/android/internal/telephony/Connection;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    #@2b
    goto :goto_0

    #@2c
    .line 164
    .end local v0    # "c":Lcom/android/internal/telephony/Connection;
    .end local v6    # "t":J
    :cond_2
    return-object v1
.end method

.method public getEarliestCreateTime()J
    .locals 10

    #@0
    .prologue
    .line 170
    const-wide v6, 0x7fffffffffffffffL

    #@5
    .line 172
    .local v6, "time":J
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    #@8
    move-result-object v2

    #@9
    .line 174
    .local v2, "l":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    #@c
    move-result v8

    #@d
    if-nez v8, :cond_0

    #@f
    .line 175
    const-wide/16 v8, 0x0

    #@11
    return-wide v8

    #@12
    .line 178
    :cond_0
    const/4 v1, 0x0

    #@13
    .local v1, "i":I
    invoke-interface {v2}, Ljava/util/List;->size()I

    #@16
    move-result v3

    #@17
    .local v3, "s":I
    :goto_0
    if-ge v1, v3, :cond_2

    #@19
    .line 179
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@1c
    move-result-object v0

    #@1d
    check-cast v0, Lcom/android/internal/telephony/Connection;

    #@1f
    .line 182
    .local v0, "c":Lcom/android/internal/telephony/Connection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    #@22
    move-result-wide v4

    #@23
    .line 184
    .local v4, "t":J
    cmp-long v8, v4, v6

    #@25
    if-gez v8, :cond_1

    #@27
    move-wide v6, v4

    #@28
    .line 178
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@2a
    goto :goto_0

    #@2b
    .line 187
    .end local v0    # "c":Lcom/android/internal/telephony/Connection;
    .end local v4    # "t":J
    :cond_2
    return-wide v6
.end method

.method public getLatestConnection()Lcom/android/internal/telephony/Connection;
    .locals 10

    #@0
    .prologue
    .line 228
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    #@3
    move-result-object v2

    #@4
    .line 229
    .local v2, "l":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    invoke-interface {v2}, Ljava/util/List;->size()I

    #@7
    move-result v5

    #@8
    if-nez v5, :cond_0

    #@a
    .line 230
    const/4 v5, 0x0

    #@b
    return-object v5

    #@c
    .line 233
    :cond_0
    const-wide/16 v8, 0x0

    #@e
    .line 234
    .local v8, "time":J
    const/4 v3, 0x0

    #@f
    .line 235
    .local v3, "latest":Lcom/android/internal/telephony/Connection;
    const/4 v1, 0x0

    #@10
    .local v1, "i":I
    invoke-interface {v2}, Ljava/util/List;->size()I

    #@13
    move-result v4

    #@14
    .end local v3    # "latest":Lcom/android/internal/telephony/Connection;
    .local v4, "s":I
    :goto_0
    if-ge v1, v4, :cond_2

    #@16
    .line 236
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@19
    move-result-object v0

    #@1a
    check-cast v0, Lcom/android/internal/telephony/Connection;

    #@1c
    .line 237
    .local v0, "c":Lcom/android/internal/telephony/Connection;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getCreateTime()J

    #@1f
    move-result-wide v6

    #@20
    .line 239
    .local v6, "t":J
    cmp-long v5, v6, v8

    #@22
    if-lez v5, :cond_1

    #@24
    .line 240
    move-object v3, v0

    #@25
    .line 241
    .local v3, "latest":Lcom/android/internal/telephony/Connection;
    move-wide v8, v6

    #@26
    .line 235
    .end local v3    # "latest":Lcom/android/internal/telephony/Connection;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    #@28
    goto :goto_0

    #@29
    .line 245
    .end local v0    # "c":Lcom/android/internal/telephony/Connection;
    .end local v6    # "t":J
    :cond_2
    return-object v3
.end method

.method public abstract getPhone()Lcom/android/internal/telephony/Phone;
.end method

.method public getState()Lcom/android/internal/telephony/Call$State;
    .locals 1

    #@0
    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/internal/telephony/Call;->mState:Lcom/android/internal/telephony/Call$State;

    #@2
    return-object v0
.end method

.method public abstract hangup()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation
.end method

.method public hangupIfAlive()V
    .locals 4

    #@0
    .prologue
    .line 252
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    #@3
    move-result-object v1

    #@4
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    #@7
    move-result v1

    #@8
    if-eqz v1, :cond_0

    #@a
    .line 254
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->hangup()V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    .line 251
    :cond_0
    :goto_0
    return-void

    #@e
    .line 255
    :catch_0
    move-exception v0

    #@f
    .line 256
    .local v0, "ex":Lcom/android/internal/telephony/CallStateException;
    const-string/jumbo v1, "Call"

    #@12
    new-instance v2, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    const-string/jumbo v3, " hangupIfActive: caught "

    #@1a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v2

    #@1e
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v2

    #@22
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25
    move-result-object v2

    #@26
    invoke-static {v1, v2}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@29
    goto :goto_0
.end method

.method public hasConnection(Lcom/android/internal/telephony/Connection;)Z
    .locals 1
    .param p1, "c"    # Lcom/android/internal/telephony/Connection;

    #@0
    .prologue
    .line 92
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    #@3
    move-result-object v0

    #@4
    if-ne v0, p0, :cond_0

    #@6
    const/4 v0, 0x1

    #@7
    :goto_0
    return v0

    #@8
    :cond_0
    const/4 v0, 0x0

    #@9
    goto :goto_0
.end method

.method public hasConnections()Z
    .locals 3

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 100
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    #@4
    move-result-object v0

    #@5
    .line 102
    .local v0, "connections":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    if-nez v0, :cond_0

    #@7
    .line 103
    return v1

    #@8
    .line 106
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    #@b
    move-result v2

    #@c
    if-lez v2, :cond_1

    #@e
    const/4 v1, 0x1

    #@f
    :cond_1
    return v1
.end method

.method public isDialingOrAlerting()Z
    .locals 1

    #@0
    .prologue
    .line 214
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method public isIdle()Z
    .locals 1

    #@0
    .prologue
    .line 132
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    #@7
    move-result v0

    #@8
    if-eqz v0, :cond_0

    #@a
    const/4 v0, 0x0

    #@b
    :goto_0
    return v0

    #@c
    :cond_0
    const/4 v0, 0x1

    #@d
    goto :goto_0
.end method

.method public abstract isMultiparty()Z
.end method

.method public isRinging()Z
    .locals 1

    #@0
    .prologue
    .line 219
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isRinging()Z

    #@7
    move-result v0

    #@8
    return v0
.end method

.method protected setState(Lcom/android/internal/telephony/Call$State;)V
    .locals 0
    .param p1, "newState"    # Lcom/android/internal/telephony/Call$State;

    #@0
    .prologue
    .line 278
    iput-object p1, p0, Lcom/android/internal/telephony/Call;->mState:Lcom/android/internal/telephony/Call$State;

    #@2
    .line 277
    return-void
.end method
