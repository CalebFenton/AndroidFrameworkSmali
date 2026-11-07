.class public Landroid/content/pm/PackageParser$NewPermissionInfo;
.super Ljava/lang/Object;
.source "PackageParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/PackageParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NewPermissionInfo"
.end annotation


# instance fields
.field public final greylist-max-o fileVersion:I

.field public final greylist name:Ljava/lang/String;

.field public final greylist sdkVersion:I


# direct methods
.method public constructor greylist-max-o <init>(Ljava/lang/String;II)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "sdkVersion"    # I
    .param p3, "fileVersion"    # I

    .line 273
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 274
    iput-object p1, p0, Landroid/content/pm/PackageParser$NewPermissionInfo;->name:Ljava/lang/String;

    .line 275
    iput p2, p0, Landroid/content/pm/PackageParser$NewPermissionInfo;->sdkVersion:I

    .line 276
    iput p3, p0, Landroid/content/pm/PackageParser$NewPermissionInfo;->fileVersion:I

    .line 277
    return-void
.end method
