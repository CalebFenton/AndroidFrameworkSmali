.class public final Landroid/net/eap/EapAkaInfo$Builder;
.super Ljava/lang/Object;
.source "EapAkaInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/eap/EapAkaInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mReauthId:[B


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmReauthId(Landroid/net/eap/EapAkaInfo$Builder;)[B
    .registers 1

    iget-object p0, p0, Landroid/net/eap/EapAkaInfo$Builder;->mReauthId:[B

    return-object p0
.end method

.method public constructor whitelist <init>()V
    .registers 1

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/net/eap/EapAkaInfo;
    .registers 3

    .line 99
    new-instance v0, Landroid/net/eap/EapAkaInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/net/eap/EapAkaInfo;-><init>(Landroid/net/eap/EapAkaInfo$Builder;Landroid/net/eap/EapAkaInfo-IA;)V

    return-object v0
.end method

.method public whitelist setReauthId([B)Landroid/net/eap/EapAkaInfo$Builder;
    .registers 5
    .param p1, "reauthId"    # [B

    .line 85
    const-string v0, "reauthId must not be null"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 86
    array-length v0, p1

    new-array v0, v0, [B

    iput-object v0, p0, Landroid/net/eap/EapAkaInfo$Builder;->mReauthId:[B

    .line 87
    iget-object v0, p0, Landroid/net/eap/EapAkaInfo$Builder;->mReauthId:[B

    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 88
    return-object p0
.end method
