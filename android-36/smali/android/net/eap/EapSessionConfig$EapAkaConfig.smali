.class public Landroid/net/eap/EapSessionConfig$EapAkaConfig;
.super Landroid/net/eap/EapSessionConfig$EapUiccConfig;
.source "EapSessionConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/eap/EapSessionConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EapAkaConfig"
.end annotation


# static fields
.field private static final blacklist AKA_OPTION_KEY:Ljava/lang/String; = "akaOption"


# instance fields
.field private final blacklist mEapAkaOption:Landroid/net/eap/EapSessionConfig$EapAkaOption;


# direct methods
.method public constructor blacklist <init>(II)V
    .registers 5
    .param p1, "subId"    # I
    .param p2, "apptype"    # I

    .line 646
    const/16 v0, 0x17

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, p2, v1}, Landroid/net/eap/EapSessionConfig$EapAkaConfig;-><init>(IIILandroid/net/eap/EapSessionConfig$EapAkaOption;)V

    .line 647
    return-void
.end method

.method constructor blacklist <init>(IIILandroid/net/eap/EapSessionConfig$EapAkaOption;)V
    .registers 6
    .param p1, "methodType"    # I
    .param p2, "subId"    # I
    .param p3, "apptype"    # I
    .param p4, "options"    # Landroid/net/eap/EapSessionConfig$EapAkaOption;

    .line 657
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/net/eap/EapSessionConfig$EapUiccConfig;-><init>(IIILandroid/net/eap/EapSessionConfig-IA;)V

    .line 658
    iput-object p4, p0, Landroid/net/eap/EapSessionConfig$EapAkaConfig;->mEapAkaOption:Landroid/net/eap/EapSessionConfig$EapAkaOption;

    .line 659
    return-void
.end method

.method public constructor blacklist <init>(IILandroid/net/eap/EapSessionConfig$EapAkaOption;)V
    .registers 5
    .param p1, "subId"    # I
    .param p2, "apptype"    # I
    .param p3, "options"    # Landroid/net/eap/EapSessionConfig$EapAkaOption;

    .line 652
    const/16 v0, 0x17

    invoke-direct {p0, v0, p1, p2, p3}, Landroid/net/eap/EapSessionConfig$EapAkaConfig;-><init>(IIILandroid/net/eap/EapSessionConfig$EapAkaOption;)V

    .line 653
    return-void
.end method

.method public static blacklist fromPersistableBundle(Landroid/os/PersistableBundle;)Landroid/net/eap/EapSessionConfig$EapAkaConfig;
    .registers 6
    .param p0, "in"    # Landroid/os/PersistableBundle;

    .line 668
    const-string v0, "PersistableBundle is null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 670
    const/4 v0, 0x0

    .line 671
    .local v0, "eapAkaOption":Landroid/net/eap/EapSessionConfig$EapAkaOption;
    const-string v1, "akaOption"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getPersistableBundle(Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v1

    .line 672
    .local v1, "bundle":Landroid/os/PersistableBundle;
    if-eqz v1, :cond_12

    .line 673
    invoke-static {v1}, Landroid/net/eap/EapSessionConfig$EapAkaOption;->fromPersistableBundle(Landroid/os/PersistableBundle;)Landroid/net/eap/EapSessionConfig$EapAkaOption;

    move-result-object v0

    .line 676
    :cond_12
    new-instance v2, Landroid/net/eap/EapSessionConfig$EapAkaConfig;

    const-string v3, "subId"

    invoke-virtual {p0, v3}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v3

    const-string v4, "apptype"

    invoke-virtual {p0, v4}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {v2, v3, v4, v0}, Landroid/net/eap/EapSessionConfig$EapAkaConfig;-><init>(IILandroid/net/eap/EapSessionConfig$EapAkaOption;)V

    return-object v2
.end method


# virtual methods
.method public whitelist getEapAkaOption()Landroid/net/eap/EapSessionConfig$EapAkaOption;
    .registers 2

    .line 702
    iget-object v0, p0, Landroid/net/eap/EapSessionConfig$EapAkaConfig;->mEapAkaOption:Landroid/net/eap/EapSessionConfig$EapAkaOption;

    return-object v0
.end method

.method protected blacklist toPersistableBundle()Landroid/os/PersistableBundle;
    .registers 4

    .line 687
    invoke-super {p0}, Landroid/net/eap/EapSessionConfig$EapUiccConfig;->toPersistableBundle()Landroid/os/PersistableBundle;

    move-result-object v0

    .line 688
    .local v0, "result":Landroid/os/PersistableBundle;
    iget-object v1, p0, Landroid/net/eap/EapSessionConfig$EapAkaConfig;->mEapAkaOption:Landroid/net/eap/EapSessionConfig$EapAkaOption;

    if-eqz v1, :cond_13

    .line 689
    iget-object v1, p0, Landroid/net/eap/EapSessionConfig$EapAkaConfig;->mEapAkaOption:Landroid/net/eap/EapSessionConfig$EapAkaOption;

    invoke-virtual {v1}, Landroid/net/eap/EapSessionConfig$EapAkaOption;->toPersistableBundle()Landroid/os/PersistableBundle;

    move-result-object v1

    const-string v2, "akaOption"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putPersistableBundle(Ljava/lang/String;Landroid/os/PersistableBundle;)V

    .line 692
    :cond_13
    return-object v0
.end method
