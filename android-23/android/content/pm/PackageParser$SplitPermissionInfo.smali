.class public Landroid/content/pm/PackageParser$SplitPermissionInfo;
.super Ljava/lang/Object;
.source "PackageParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/PackageParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SplitPermissionInfo"
.end annotation


# instance fields
.field public final newPerms:[Ljava/lang/String;

.field public final rootPerm:Ljava/lang/String;

.field public final targetSdk:I


# direct methods
.method public constructor <init>(Ljava/lang/String;[Ljava/lang/String;I)V
    .locals 0
    .param p1, "rootPerm"    # Ljava/lang/String;
    .param p2, "newPerms"    # [Ljava/lang/String;
    .param p3, "targetSdk"    # I

    #@0
    .prologue
    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 139
    iput-object p1, p0, Landroid/content/pm/PackageParser$SplitPermissionInfo;->rootPerm:Ljava/lang/String;

    #@5
    .line 140
    iput-object p2, p0, Landroid/content/pm/PackageParser$SplitPermissionInfo;->newPerms:[Ljava/lang/String;

    #@7
    .line 141
    iput p3, p0, Landroid/content/pm/PackageParser$SplitPermissionInfo;->targetSdk:I

    #@9
    .line 138
    return-void
.end method
