.class public Landroid/net/eap/EapSessionConfig$EapSimConfig;
.super Landroid/net/eap/EapSessionConfig$EapUiccConfig;
.source "EapSessionConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/eap/EapSessionConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EapSimConfig"
.end annotation


# direct methods
.method public constructor blacklist <init>(II)V
    .registers 5
    .param p1, "subId"    # I
    .param p2, "apptype"    # I

    .line 620
    const/16 v0, 0x12

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, p2, v1}, Landroid/net/eap/EapSessionConfig$EapUiccConfig;-><init>(IIILandroid/net/eap/EapSessionConfig-IA;)V

    .line 621
    return-void
.end method

.method public static blacklist fromPersistableBundle(Landroid/os/PersistableBundle;)Landroid/net/eap/EapSessionConfig$EapSimConfig;
    .registers 4
    .param p0, "in"    # Landroid/os/PersistableBundle;

    .line 630
    const-string v0, "PersistableBundle is null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 631
    new-instance v0, Landroid/net/eap/EapSessionConfig$EapSimConfig;

    const-string v1, "subId"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "apptype"

    invoke-virtual {p0, v2}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/net/eap/EapSessionConfig$EapSimConfig;-><init>(II)V

    return-object v0
.end method
