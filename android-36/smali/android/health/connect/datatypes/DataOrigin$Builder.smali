.class public final Landroid/health/connect/datatypes/DataOrigin$Builder;
.super Ljava/lang/Object;
.source "DataOrigin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/health/connect/datatypes/DataOrigin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mPackageName:Ljava/lang/String;


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/health/connect/datatypes/DataOrigin;
    .registers 4

    .line 50
    new-instance v0, Landroid/health/connect/datatypes/DataOrigin;

    iget-object v1, p0, Landroid/health/connect/datatypes/DataOrigin$Builder;->mPackageName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/health/connect/datatypes/DataOrigin;-><init>(Ljava/lang/String;Landroid/health/connect/datatypes/DataOrigin-IA;)V

    return-object v0
.end method

.method public whitelist setPackageName(Ljava/lang/String;)Landroid/health/connect/datatypes/DataOrigin$Builder;
    .registers 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 39
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    iput-object p1, p0, Landroid/health/connect/datatypes/DataOrigin$Builder;->mPackageName:Ljava/lang/String;

    .line 42
    return-object p0
.end method
