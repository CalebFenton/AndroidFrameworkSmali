.class public Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;
.super Ljava/lang/Object;
.source "WifiP2pProvDiscEvent.java"


# static fields
.field public static final ENTER_PIN:I = 0x3

.field public static final PBC_REQ:I = 0x1

.field public static final PBC_RSP:I = 0x2

.field public static final SHOW_PIN:I = 0x4

.field private static final TAG:Ljava/lang/String; = "WifiP2pProvDiscEvent"


# instance fields
.field public device:Landroid/net/wifi/p2p/WifiP2pDevice;

.field public event:I

.field public pin:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 43
    new-instance v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    #@5
    invoke-direct {v0}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>()V

    #@8
    iput-object v0, p0, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    #@a
    .line 42
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 7
    .param p1, "string"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v6, 0x4

    #@1
    const/4 v5, 0x1

    #@2
    const/4 v4, 0x2

    #@3
    const/4 v3, 0x0

    #@4
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@7
    .line 58
    const-string/jumbo v1, " "

    #@a
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@d
    move-result-object v0

    #@e
    .line 60
    .local v0, "tokens":[Ljava/lang/String;
    array-length v1, v0

    #@f
    if-ge v1, v4, :cond_0

    #@11
    .line 61
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@13
    new-instance v2, Ljava/lang/StringBuilder;

    #@15
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@18
    const-string/jumbo v3, "Malformed event "

    #@1b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e
    move-result-object v2

    #@1f
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v2

    #@23
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@26
    move-result-object v2

    #@27
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2a
    throw v1

    #@2b
    .line 64
    :cond_0
    aget-object v1, v0, v3

    #@2d
    const-string/jumbo v2, "PBC-REQ"

    #@30
    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@33
    move-result v1

    #@34
    if-eqz v1, :cond_2

    #@36
    iput v5, p0, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;->event:I

    #@38
    .line 71
    :goto_0
    new-instance v1, Landroid/net/wifi/p2p/WifiP2pDevice;

    #@3a
    invoke-direct {v1}, Landroid/net/wifi/p2p/WifiP2pDevice;-><init>()V

    #@3d
    iput-object v1, p0, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    #@3f
    .line 72
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    #@41
    aget-object v2, v0, v5

    #@43
    iput-object v2, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    #@45
    .line 74
    iget v1, p0, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;->event:I

    #@47
    if-ne v1, v6, :cond_1

    #@49
    .line 75
    aget-object v1, v0, v4

    #@4b
    iput-object v1, p0, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;->pin:Ljava/lang/String;

    #@4d
    .line 57
    :cond_1
    return-void

    #@4e
    .line 65
    :cond_2
    aget-object v1, v0, v3

    #@50
    const-string/jumbo v2, "PBC-RESP"

    #@53
    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@56
    move-result v1

    #@57
    if-eqz v1, :cond_3

    #@59
    iput v4, p0, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;->event:I

    #@5b
    goto :goto_0

    #@5c
    .line 66
    :cond_3
    aget-object v1, v0, v3

    #@5e
    const-string/jumbo v2, "ENTER-PIN"

    #@61
    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@64
    move-result v1

    #@65
    if-eqz v1, :cond_4

    #@67
    const/4 v1, 0x3

    #@68
    iput v1, p0, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;->event:I

    #@6a
    goto :goto_0

    #@6b
    .line 67
    :cond_4
    aget-object v1, v0, v3

    #@6d
    const-string/jumbo v2, "SHOW-PIN"

    #@70
    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    #@73
    move-result v1

    #@74
    if-eqz v1, :cond_5

    #@76
    iput v6, p0, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;->event:I

    #@78
    goto :goto_0

    #@79
    .line 68
    :cond_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@7b
    new-instance v2, Ljava/lang/StringBuilder;

    #@7d
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@80
    const-string/jumbo v3, "Malformed event "

    #@83
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@86
    move-result-object v2

    #@87
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8a
    move-result-object v2

    #@8b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8e
    move-result-object v2

    #@8f
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@92
    throw v1
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 80
    new-instance v0, Ljava/lang/StringBuffer;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    #@5
    .line 81
    .local v0, "sbuf":Ljava/lang/StringBuffer;
    iget-object v1, p0, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;->device:Landroid/net/wifi/p2p/WifiP2pDevice;

    #@7
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    #@a
    .line 82
    const-string/jumbo v1, "\n event: "

    #@d
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@10
    move-result-object v1

    #@11
    iget v2, p0, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;->event:I

    #@13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    #@16
    .line 83
    const-string/jumbo v1, "\n pin: "

    #@19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@1c
    move-result-object v1

    #@1d
    iget-object v2, p0, Landroid/net/wifi/p2p/WifiP2pProvDiscEvent;->pin:Ljava/lang/String;

    #@1f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    #@22
    .line 84
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    #@25
    move-result-object v1

    #@26
    return-object v1
.end method
