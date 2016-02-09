.class public Lcom/android/internal/net/LegacyVpnInfo;
.super Ljava/lang/Object;
.source "LegacyVpnInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/net/LegacyVpnInfo$1;
    }
.end annotation


# static fields
.field private static synthetic -android_net_NetworkInfo$DetailedStateSwitchesValues:[I = null

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/internal/net/LegacyVpnInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final STATE_CONNECTED:I = 0x3

.field public static final STATE_CONNECTING:I = 0x2

.field public static final STATE_DISCONNECTED:I = 0x0

.field public static final STATE_FAILED:I = 0x5

.field public static final STATE_INITIALIZING:I = 0x1

.field public static final STATE_TIMEOUT:I = 0x4

.field private static final TAG:Ljava/lang/String; = "LegacyVpnInfo"


# instance fields
.field public intent:Landroid/app/PendingIntent;

.field public key:Ljava/lang/String;

.field public state:I


# direct methods
.method private static synthetic -getandroid_net_NetworkInfo$DetailedStateSwitchesValues()[I
    .locals 3

    #@0
    sget-object v0, Lcom/android/internal/net/LegacyVpnInfo;->-android_net_NetworkInfo$DetailedStateSwitchesValues:[I

    #@2
    if-eqz v0, :cond_0

    #@4
    sget-object v0, Lcom/android/internal/net/LegacyVpnInfo;->-android_net_NetworkInfo$DetailedStateSwitchesValues:[I

    #@6
    return-object v0

    #@7
    :cond_0
    invoke-static {}, Landroid/net/NetworkInfo$DetailedState;->values()[Landroid/net/NetworkInfo$DetailedState;

    #@a
    move-result-object v0

    #@b
    array-length v0, v0

    #@c
    new-array v0, v0, [I

    #@e
    :try_start_0
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->AUTHENTICATING:Landroid/net/NetworkInfo$DetailedState;

    #@10
    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    #@13
    move-result v1

    #@14
    const/4 v2, 0x5

    #@15
    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_c

    #@17
    :goto_0
    :try_start_1
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->BLOCKED:Landroid/net/NetworkInfo$DetailedState;

    #@19
    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    #@1c
    move-result v1

    #@1d
    const/4 v2, 0x6

    #@1e
    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_b

    #@20
    :goto_1
    :try_start_2
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CAPTIVE_PORTAL_CHECK:Landroid/net/NetworkInfo$DetailedState;

    #@22
    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    #@25
    move-result v1

    #@26
    const/4 v2, 0x7

    #@27
    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_a

    #@29
    :goto_2
    :try_start_3
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    #@2b
    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    #@2e
    move-result v1

    #@2f
    const/4 v2, 0x1

    #@30
    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_9

    #@32
    :goto_3
    :try_start_4
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    #@34
    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    #@37
    move-result v1

    #@38
    const/4 v2, 0x2

    #@39
    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_8

    #@3b
    :goto_4
    :try_start_5
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    #@3d
    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    #@40
    move-result v1

    #@41
    const/4 v2, 0x3

    #@42
    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_7

    #@44
    :goto_5
    :try_start_6
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTING:Landroid/net/NetworkInfo$DetailedState;

    #@46
    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    #@49
    move-result v1

    #@4a
    const/16 v2, 0x8

    #@4c
    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    #@4e
    :goto_6
    :try_start_7
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    #@50
    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    #@53
    move-result v1

    #@54
    const/4 v2, 0x4

    #@55
    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_5

    #@57
    :goto_7
    :try_start_8
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->IDLE:Landroid/net/NetworkInfo$DetailedState;

    #@59
    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    #@5c
    move-result v1

    #@5d
    const/16 v2, 0x9

    #@5f
    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_4

    #@61
    :goto_8
    :try_start_9
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    #@63
    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    #@66
    move-result v1

    #@67
    const/16 v2, 0xa

    #@69
    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_3

    #@6b
    :goto_9
    :try_start_a
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->SCANNING:Landroid/net/NetworkInfo$DetailedState;

    #@6d
    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    #@70
    move-result v1

    #@71
    const/16 v2, 0xb

    #@73
    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_2

    #@75
    :goto_a
    :try_start_b
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->SUSPENDED:Landroid/net/NetworkInfo$DetailedState;

    #@77
    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    #@7a
    move-result v1

    #@7b
    const/16 v2, 0xc

    #@7d
    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_1

    #@7f
    :goto_b
    :try_start_c
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->VERIFYING_POOR_LINK:Landroid/net/NetworkInfo$DetailedState;

    #@81
    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    #@84
    move-result v1

    #@85
    const/16 v2, 0xd

    #@87
    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_0

    #@89
    :goto_c
    sput-object v0, Lcom/android/internal/net/LegacyVpnInfo;->-android_net_NetworkInfo$DetailedStateSwitchesValues:[I

    #@8b
    return-object v0

    #@8c
    :catch_0
    move-exception v1

    #@8d
    goto :goto_c

    #@8e
    :catch_1
    move-exception v1

    #@8f
    goto :goto_b

    #@90
    :catch_2
    move-exception v1

    #@91
    goto :goto_a

    #@92
    :catch_3
    move-exception v1

    #@93
    goto :goto_9

    #@94
    :catch_4
    move-exception v1

    #@95
    goto :goto_8

    #@96
    :catch_5
    move-exception v1

    #@97
    goto :goto_7

    #@98
    :catch_6
    move-exception v1

    #@99
    goto :goto_6

    #@9a
    :catch_7
    move-exception v1

    #@9b
    goto :goto_5

    #@9c
    :catch_8
    move-exception v1

    #@9d
    goto :goto_4

    #@9e
    :catch_9
    move-exception v1

    #@9f
    goto :goto_3

    #@a0
    :catch_a
    move-exception v1

    #@a1
    goto :goto_2

    #@a2
    :catch_b
    move-exception v1

    #@a3
    goto/16 :goto_1

    #@a5
    :catch_c
    move-exception v1

    #@a6
    goto/16 :goto_0
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 58
    new-instance v0, Lcom/android/internal/net/LegacyVpnInfo$1;

    #@2
    invoke-direct {v0}, Lcom/android/internal/net/LegacyVpnInfo$1;-><init>()V

    #@5
    .line 57
    sput-object v0, Lcom/android/internal/net/LegacyVpnInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    #@7
    .line 31
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 42
    const/4 v0, -0x1

    #@4
    iput v0, p0, Lcom/android/internal/net/LegacyVpnInfo;->state:I

    #@6
    .line 31
    return-void
.end method

.method public static stateFromNetworkInfo(Landroid/net/NetworkInfo;)I
    .locals 4
    .param p0, "info"    # Landroid/net/NetworkInfo;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 79
    invoke-static {}, Lcom/android/internal/net/LegacyVpnInfo;->-getandroid_net_NetworkInfo$DetailedStateSwitchesValues()[I

    #@4
    move-result-object v0

    #@5
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    #@8
    move-result-object v1

    #@9
    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    #@c
    move-result v1

    #@d
    aget v0, v0, v1

    #@f
    packed-switch v0, :pswitch_data_0

    #@12
    .line 89
    const-string/jumbo v0, "LegacyVpnInfo"

    #@15
    new-instance v1, Ljava/lang/StringBuilder;

    #@17
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1a
    const-string/jumbo v2, "Unhandled state "

    #@1d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v1

    #@21
    invoke-virtual {p0}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    #@24
    move-result-object v2

    #@25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@28
    move-result-object v1

    #@29
    .line 90
    const-string/jumbo v2, " ; treating as disconnected"

    #@2c
    .line 89
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v1

    #@30
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@33
    move-result-object v1

    #@34
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    #@37
    .line 91
    return v3

    #@38
    .line 81
    :pswitch_0
    const/4 v0, 0x2

    #@39
    return v0

    #@3a
    .line 83
    :pswitch_1
    const/4 v0, 0x3

    #@3b
    return v0

    #@3c
    .line 85
    :pswitch_2
    return v3

    #@3d
    .line 87
    :pswitch_3
    const/4 v0, 0x5

    #@3e
    return v0

    #@3f
    .line 79
    nop

    #@40
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    #@0
    .prologue
    .line 47
    const/4 v0, 0x0

    #@1
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    #@0
    .prologue
    .line 52
    iget-object v0, p0, Lcom/android/internal/net/LegacyVpnInfo;->key:Ljava/lang/String;

    #@2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    #@5
    .line 53
    iget v0, p0, Lcom/android/internal/net/LegacyVpnInfo;->state:I

    #@7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    #@a
    .line 54
    iget-object v0, p0, Lcom/android/internal/net/LegacyVpnInfo;->intent:Landroid/app/PendingIntent;

    #@c
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    #@f
    .line 51
    return-void
.end method
