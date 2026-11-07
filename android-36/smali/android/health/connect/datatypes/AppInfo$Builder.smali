.class public final Landroid/health/connect/datatypes/AppInfo$Builder;
.super Ljava/lang/Object;
.source "AppInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/health/connect/datatypes/AppInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final blacklist mIcon:Landroid/graphics/Bitmap;

.field private final blacklist mName:Ljava/lang/String;

.field private final blacklist mPackageName:Ljava/lang/String;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "icon"    # Landroid/graphics/Bitmap;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    iput-object p1, p0, Landroid/health/connect/datatypes/AppInfo$Builder;->mPackageName:Ljava/lang/String;

    .line 55
    iput-object p2, p0, Landroid/health/connect/datatypes/AppInfo$Builder;->mName:Ljava/lang/String;

    .line 56
    iput-object p3, p0, Landroid/health/connect/datatypes/AppInfo$Builder;->mIcon:Landroid/graphics/Bitmap;

    .line 57
    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/health/connect/datatypes/AppInfo;
    .registers 6

    .line 64
    new-instance v0, Landroid/health/connect/datatypes/AppInfo;

    iget-object v1, p0, Landroid/health/connect/datatypes/AppInfo$Builder;->mPackageName:Ljava/lang/String;

    iget-object v2, p0, Landroid/health/connect/datatypes/AppInfo$Builder;->mName:Ljava/lang/String;

    iget-object v3, p0, Landroid/health/connect/datatypes/AppInfo$Builder;->mIcon:Landroid/graphics/Bitmap;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/health/connect/datatypes/AppInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/health/connect/datatypes/AppInfo-IA;)V

    return-object v0
.end method
