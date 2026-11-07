.class public final Landroid/net/eap/EapAkaInfo;
.super Landroid/net/eap/EapInfo;
.source "EapAkaInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/eap/EapAkaInfo$Builder;
    }
.end annotation


# instance fields
.field private final blacklist mReauthId:[B


# direct methods
.method private constructor blacklist <init>(Landroid/net/eap/EapAkaInfo$Builder;)V
    .registers 3
    .param p1, "builder"    # Landroid/net/eap/EapAkaInfo$Builder;

    .line 50
    const/16 v0, 0x17

    invoke-direct {p0, v0}, Landroid/net/eap/EapInfo;-><init>(I)V

    .line 51
    invoke-static {p1}, Landroid/net/eap/EapAkaInfo$Builder;->-$$Nest$fgetmReauthId(Landroid/net/eap/EapAkaInfo$Builder;)[B

    move-result-object v0

    iput-object v0, p0, Landroid/net/eap/EapAkaInfo;->mReauthId:[B

    .line 52
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/net/eap/EapAkaInfo$Builder;Landroid/net/eap/EapAkaInfo-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/net/eap/EapAkaInfo;-><init>(Landroid/net/eap/EapAkaInfo$Builder;)V

    return-void
.end method

.method public constructor blacklist <init>([B)V
    .registers 3
    .param p1, "reauthId"    # [B

    .line 45
    const/16 v0, 0x17

    invoke-direct {p0, v0}, Landroid/net/eap/EapInfo;-><init>(I)V

    .line 46
    iput-object p1, p0, Landroid/net/eap/EapAkaInfo;->mReauthId:[B

    .line 47
    return-void
.end method


# virtual methods
.method public whitelist getReauthId()[B
    .registers 2

    .line 65
    iget-object v0, p0, Landroid/net/eap/EapAkaInfo;->mReauthId:[B

    return-object v0
.end method
