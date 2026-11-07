.class Landroid/app/ActivityClient$1;
.super Landroid/util/Singleton;
.source "ActivityClient.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Singleton<",
        "Landroid/app/ActivityClient;",
        ">;"
    }
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 682
    invoke-direct {p0}, Landroid/util/Singleton;-><init>()V

    return-void
.end method


# virtual methods
.method protected blacklist create()Landroid/app/ActivityClient;
    .registers 3

    .line 685
    new-instance v0, Landroid/app/ActivityClient;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/app/ActivityClient;-><init>(Landroid/app/ActivityClient-IA;)V

    return-object v0
.end method

.method protected bridge synthetic blacklist create()Ljava/lang/Object;
    .registers 2

    .line 682
    invoke-virtual {p0}, Landroid/app/ActivityClient$1;->create()Landroid/app/ActivityClient;

    move-result-object v0

    return-object v0
.end method
