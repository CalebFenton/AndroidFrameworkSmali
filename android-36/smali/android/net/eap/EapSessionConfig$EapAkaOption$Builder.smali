.class public final Landroid/net/eap/EapSessionConfig$EapAkaOption$Builder;
.super Ljava/lang/Object;
.source "EapSessionConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/eap/EapSessionConfig$EapAkaOption;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field blacklist mReauthId:[B


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 1118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/net/eap/EapSessionConfig$EapAkaOption;
    .registers 3

    .line 1158
    new-instance v0, Landroid/net/eap/EapSessionConfig$EapAkaOption;

    iget-object v1, p0, Landroid/net/eap/EapSessionConfig$EapAkaOption$Builder;->mReauthId:[B

    invoke-direct {v0, v1}, Landroid/net/eap/EapSessionConfig$EapAkaOption;-><init>([B)V

    return-object v0
.end method

.method public whitelist setReauthId([B)Landroid/net/eap/EapSessionConfig$EapAkaOption$Builder;
    .registers 2
    .param p1, "reauthId"    # [B

    .line 1146
    iput-object p1, p0, Landroid/net/eap/EapSessionConfig$EapAkaOption$Builder;->mReauthId:[B

    .line 1147
    return-object p0
.end method
