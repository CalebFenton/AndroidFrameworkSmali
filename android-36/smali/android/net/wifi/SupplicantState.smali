.class public final enum Landroid/net/wifi/SupplicantState;
.super Ljava/lang/Enum;
.source "SupplicantState.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroid/net/wifi/SupplicantState;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field private static final synthetic blacklist $VALUES:[Landroid/net/wifi/SupplicantState;

.field public static final enum whitelist ASSOCIATED:Landroid/net/wifi/SupplicantState;

.field public static final enum whitelist ASSOCIATING:Landroid/net/wifi/SupplicantState;

.field public static final enum whitelist AUTHENTICATING:Landroid/net/wifi/SupplicantState;

.field public static final enum whitelist COMPLETED:Landroid/net/wifi/SupplicantState;

.field public static final greylist-max-o CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/net/wifi/SupplicantState;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum whitelist DISCONNECTED:Landroid/net/wifi/SupplicantState;

.field public static final enum whitelist DORMANT:Landroid/net/wifi/SupplicantState;

.field public static final enum whitelist FOUR_WAY_HANDSHAKE:Landroid/net/wifi/SupplicantState;

.field public static final enum whitelist GROUP_HANDSHAKE:Landroid/net/wifi/SupplicantState;

.field public static final enum whitelist INACTIVE:Landroid/net/wifi/SupplicantState;

.field public static final enum whitelist INTERFACE_DISABLED:Landroid/net/wifi/SupplicantState;

.field public static final enum whitelist INVALID:Landroid/net/wifi/SupplicantState;

.field public static final enum whitelist SCANNING:Landroid/net/wifi/SupplicantState;

.field public static final enum whitelist UNINITIALIZED:Landroid/net/wifi/SupplicantState;


# direct methods
.method private static synthetic blacklist $values()[Landroid/net/wifi/SupplicantState;
    .registers 13

    .line 35
    sget-object v0, Landroid/net/wifi/SupplicantState;->DISCONNECTED:Landroid/net/wifi/SupplicantState;

    sget-object v1, Landroid/net/wifi/SupplicantState;->INTERFACE_DISABLED:Landroid/net/wifi/SupplicantState;

    sget-object v2, Landroid/net/wifi/SupplicantState;->INACTIVE:Landroid/net/wifi/SupplicantState;

    sget-object v3, Landroid/net/wifi/SupplicantState;->SCANNING:Landroid/net/wifi/SupplicantState;

    sget-object v4, Landroid/net/wifi/SupplicantState;->AUTHENTICATING:Landroid/net/wifi/SupplicantState;

    sget-object v5, Landroid/net/wifi/SupplicantState;->ASSOCIATING:Landroid/net/wifi/SupplicantState;

    sget-object v6, Landroid/net/wifi/SupplicantState;->ASSOCIATED:Landroid/net/wifi/SupplicantState;

    sget-object v7, Landroid/net/wifi/SupplicantState;->FOUR_WAY_HANDSHAKE:Landroid/net/wifi/SupplicantState;

    sget-object v8, Landroid/net/wifi/SupplicantState;->GROUP_HANDSHAKE:Landroid/net/wifi/SupplicantState;

    sget-object v9, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    sget-object v10, Landroid/net/wifi/SupplicantState;->DORMANT:Landroid/net/wifi/SupplicantState;

    sget-object v11, Landroid/net/wifi/SupplicantState;->UNINITIALIZED:Landroid/net/wifi/SupplicantState;

    sget-object v12, Landroid/net/wifi/SupplicantState;->INVALID:Landroid/net/wifi/SupplicantState;

    filled-new-array/range {v0 .. v12}, [Landroid/net/wifi/SupplicantState;

    move-result-object v0

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 3

    .line 41
    new-instance v0, Landroid/net/wifi/SupplicantState;

    const-string v1, "DISCONNECTED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/net/wifi/SupplicantState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/wifi/SupplicantState;->DISCONNECTED:Landroid/net/wifi/SupplicantState;

    .line 50
    new-instance v0, Landroid/net/wifi/SupplicantState;

    const-string v1, "INTERFACE_DISABLED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroid/net/wifi/SupplicantState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/wifi/SupplicantState;->INTERFACE_DISABLED:Landroid/net/wifi/SupplicantState;

    .line 60
    new-instance v0, Landroid/net/wifi/SupplicantState;

    const-string v1, "INACTIVE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroid/net/wifi/SupplicantState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/wifi/SupplicantState;->INACTIVE:Landroid/net/wifi/SupplicantState;

    .line 68
    new-instance v0, Landroid/net/wifi/SupplicantState;

    const-string v1, "SCANNING"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroid/net/wifi/SupplicantState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/wifi/SupplicantState;->SCANNING:Landroid/net/wifi/SupplicantState;

    .line 77
    new-instance v0, Landroid/net/wifi/SupplicantState;

    const-string v1, "AUTHENTICATING"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Landroid/net/wifi/SupplicantState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/wifi/SupplicantState;->AUTHENTICATING:Landroid/net/wifi/SupplicantState;

    .line 88
    new-instance v0, Landroid/net/wifi/SupplicantState;

    const-string v1, "ASSOCIATING"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Landroid/net/wifi/SupplicantState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/wifi/SupplicantState;->ASSOCIATING:Landroid/net/wifi/SupplicantState;

    .line 98
    new-instance v0, Landroid/net/wifi/SupplicantState;

    const-string v1, "ASSOCIATED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Landroid/net/wifi/SupplicantState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/wifi/SupplicantState;->ASSOCIATED:Landroid/net/wifi/SupplicantState;

    .line 108
    new-instance v0, Landroid/net/wifi/SupplicantState;

    const-string v1, "FOUR_WAY_HANDSHAKE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Landroid/net/wifi/SupplicantState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/wifi/SupplicantState;->FOUR_WAY_HANDSHAKE:Landroid/net/wifi/SupplicantState;

    .line 118
    new-instance v0, Landroid/net/wifi/SupplicantState;

    const-string v1, "GROUP_HANDSHAKE"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Landroid/net/wifi/SupplicantState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/wifi/SupplicantState;->GROUP_HANDSHAKE:Landroid/net/wifi/SupplicantState;

    .line 138
    new-instance v0, Landroid/net/wifi/SupplicantState;

    const-string v1, "COMPLETED"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Landroid/net/wifi/SupplicantState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    .line 148
    new-instance v0, Landroid/net/wifi/SupplicantState;

    const-string v1, "DORMANT"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/net/wifi/SupplicantState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/wifi/SupplicantState;->DORMANT:Landroid/net/wifi/SupplicantState;

    .line 157
    new-instance v0, Landroid/net/wifi/SupplicantState;

    const-string v1, "UNINITIALIZED"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Landroid/net/wifi/SupplicantState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/wifi/SupplicantState;->UNINITIALIZED:Landroid/net/wifi/SupplicantState;

    .line 162
    new-instance v0, Landroid/net/wifi/SupplicantState;

    const-string v1, "INVALID"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Landroid/net/wifi/SupplicantState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/net/wifi/SupplicantState;->INVALID:Landroid/net/wifi/SupplicantState;

    .line 35
    invoke-static {}, Landroid/net/wifi/SupplicantState;->$values()[Landroid/net/wifi/SupplicantState;

    move-result-object v0

    sput-object v0, Landroid/net/wifi/SupplicantState;->$VALUES:[Landroid/net/wifi/SupplicantState;

    .line 257
    new-instance v0, Landroid/net/wifi/SupplicantState$1;

    invoke-direct {v0}, Landroid/net/wifi/SupplicantState$1;-><init>()V

    sput-object v0, Landroid/net/wifi/SupplicantState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static greylist-max-o isConnecting(Landroid/net/wifi/SupplicantState;)Z
    .registers 3
    .param p0, "state"    # Landroid/net/wifi/SupplicantState;

    .line 202
    invoke-virtual {p0}, Landroid/net/wifi/SupplicantState;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_14

    .line 219
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unknown supplicant state"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 209
    :pswitch_f
    const/4 v0, 0x1

    return v0

    .line 217
    :pswitch_11
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_11
        :pswitch_11
        :pswitch_11
    .end packed-switch
.end method

.method public static greylist-max-o isDriverActive(Landroid/net/wifi/SupplicantState;)Z
    .registers 3
    .param p0, "state"    # Landroid/net/wifi/SupplicantState;

    .line 225
    invoke-virtual {p0}, Landroid/net/wifi/SupplicantState;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_14

    .line 242
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unknown supplicant state"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 240
    :pswitch_f
    const/4 v0, 0x0

    return v0

    .line 236
    :pswitch_11
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_11
        :pswitch_f
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_f
        :pswitch_f
    .end packed-switch
.end method

.method public static greylist-max-o isHandshakeState(Landroid/net/wifi/SupplicantState;)Z
    .registers 3
    .param p0, "state"    # Landroid/net/wifi/SupplicantState;

    .line 178
    invoke-virtual {p0}, Landroid/net/wifi/SupplicantState;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_14

    .line 195
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unknown supplicant state"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 184
    :pswitch_f
    const/4 v0, 0x1

    return v0

    .line 193
    :pswitch_11
    const/4 v0, 0x0

    return v0

    nop

    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_11
    .end packed-switch
.end method

.method public static whitelist isValidState(Landroid/net/wifi/SupplicantState;)Z
    .registers 2
    .param p0, "state"    # Landroid/net/wifi/SupplicantState;

    .line 172
    sget-object v0, Landroid/net/wifi/SupplicantState;->UNINITIALIZED:Landroid/net/wifi/SupplicantState;

    if-eq p0, v0, :cond_a

    sget-object v0, Landroid/net/wifi/SupplicantState;->INVALID:Landroid/net/wifi/SupplicantState;

    if-eq p0, v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public static whitelist valueOf(Ljava/lang/String;)Landroid/net/wifi/SupplicantState;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 35
    const-class v0, Landroid/net/wifi/SupplicantState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/SupplicantState;

    return-object v0
.end method

.method public static whitelist values()[Landroid/net/wifi/SupplicantState;
    .registers 1

    .line 35
    sget-object v0, Landroid/net/wifi/SupplicantState;->$VALUES:[Landroid/net/wifi/SupplicantState;

    invoke-virtual {v0}, [Landroid/net/wifi/SupplicantState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/net/wifi/SupplicantState;

    return-object v0
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 248
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 253
    invoke-virtual {p0}, Landroid/net/wifi/SupplicantState;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 254
    return-void
.end method
