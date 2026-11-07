.class public final Landroid/health/connect/datatypes/AppInfo;
.super Ljava/lang/Object;
.source "AppInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/health/connect/datatypes/AppInfo$Builder;
    }
.end annotation


# instance fields
.field private final blacklist mIcon:Landroid/graphics/Bitmap;

.field private final blacklist mName:Ljava/lang/String;

.field private final blacklist mPackageName:Ljava/lang/String;


# direct methods
.method private constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "icon"    # Landroid/graphics/Bitmap;

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    iput-object p1, p0, Landroid/health/connect/datatypes/AppInfo;->mPackageName:Ljava/lang/String;

    .line 72
    iput-object p2, p0, Landroid/health/connect/datatypes/AppInfo;->mName:Ljava/lang/String;

    .line 73
    iput-object p3, p0, Landroid/health/connect/datatypes/AppInfo;->mIcon:Landroid/graphics/Bitmap;

    .line 74
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;Landroid/health/connect/datatypes/AppInfo-IA;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Landroid/health/connect/datatypes/AppInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method


# virtual methods
.method public whitelist getIcon()Landroid/graphics/Bitmap;
    .registers 2

    .line 85
    iget-object v0, p0, Landroid/health/connect/datatypes/AppInfo;->mIcon:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public whitelist getName()Ljava/lang/String;
    .registers 2

    .line 91
    iget-object v0, p0, Landroid/health/connect/datatypes/AppInfo;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getPackageName()Ljava/lang/String;
    .registers 2

    .line 79
    iget-object v0, p0, Landroid/health/connect/datatypes/AppInfo;->mPackageName:Ljava/lang/String;

    return-object v0
.end method
