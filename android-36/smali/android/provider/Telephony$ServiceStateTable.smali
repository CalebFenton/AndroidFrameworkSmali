.class public final Landroid/provider/Telephony$ServiceStateTable;
.super Ljava/lang/Object;
.source "Telephony.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/Telephony;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ServiceStateTable"
.end annotation


# static fields
.field public static final whitelist AUTHORITY:Ljava/lang/String; = "service-state"

.field public static final whitelist CONTENT_URI:Landroid/net/Uri;

.field public static final whitelist DATA_NETWORK_TYPE:Ljava/lang/String; = "data_network_type"

.field public static final whitelist DATA_REG_STATE:Ljava/lang/String; = "data_reg_state"

.field public static final whitelist DUPLEX_MODE:Ljava/lang/String; = "duplex_mode"

.field public static final whitelist IS_MANUAL_NETWORK_SELECTION:Ljava/lang/String; = "is_manual_network_selection"

.field public static final whitelist VOICE_OPERATOR_NUMERIC:Ljava/lang/String; = "voice_operator_numeric"

.field public static final whitelist VOICE_REG_STATE:Ljava/lang/String; = "voice_reg_state"


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 3992
    const-string v0, "content://service-state/"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/Telephony$ServiceStateTable;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 3982
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static whitelist getUriForSubscriptionId(I)Landroid/net/Uri;
    .registers 3
    .param p0, "subscriptionId"    # I

    .line 4031
    sget-object v0, Landroid/provider/Telephony$ServiceStateTable;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist getUriForSubscriptionIdAndField(ILjava/lang/String;)Landroid/net/Uri;
    .registers 4
    .param p0, "subscriptionId"    # I
    .param p1, "field"    # Ljava/lang/String;

    .line 4011
    sget-object v0, Landroid/provider/Telephony$ServiceStateTable;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 4012
    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 4011
    return-object v0
.end method
