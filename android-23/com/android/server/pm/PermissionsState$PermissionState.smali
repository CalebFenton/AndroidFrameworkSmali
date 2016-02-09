.class public final Lcom/android/server/pm/PermissionsState$PermissionState;
.super Ljava/lang/Object;
.source "PermissionsState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PermissionsState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PermissionState"
.end annotation


# instance fields
.field private mFlags:I

.field private mGranted:Z

.field private final mName:Ljava/lang/String;


# direct methods
.method static synthetic -get0(Lcom/android/server/pm/PermissionsState$PermissionState;)I
    .locals 1

    #@0
    iget v0, p0, Lcom/android/server/pm/PermissionsState$PermissionState;->mFlags:I

    #@2
    return v0
.end method

.method static synthetic -get1(Lcom/android/server/pm/PermissionsState$PermissionState;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Lcom/android/server/pm/PermissionsState$PermissionState;->mGranted:Z

    #@2
    return v0
.end method

.method static synthetic -set0(Lcom/android/server/pm/PermissionsState$PermissionState;I)I
    .locals 0

    #@0
    iput p1, p0, Lcom/android/server/pm/PermissionsState$PermissionState;->mFlags:I

    #@2
    return p1
.end method

.method static synthetic -set1(Lcom/android/server/pm/PermissionsState$PermissionState;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Lcom/android/server/pm/PermissionsState$PermissionState;->mGranted:Z

    #@2
    return p1
.end method

.method public constructor <init>(Lcom/android/server/pm/PermissionsState$PermissionState;)V
    .locals 1
    .param p1, "other"    # Lcom/android/server/pm/PermissionsState$PermissionState;

    #@0
    .prologue
    .line 699
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 700
    iget-object v0, p1, Lcom/android/server/pm/PermissionsState$PermissionState;->mName:Ljava/lang/String;

    #@5
    iput-object v0, p0, Lcom/android/server/pm/PermissionsState$PermissionState;->mName:Ljava/lang/String;

    #@7
    .line 701
    iget-boolean v0, p1, Lcom/android/server/pm/PermissionsState$PermissionState;->mGranted:Z

    #@9
    iput-boolean v0, p0, Lcom/android/server/pm/PermissionsState$PermissionState;->mGranted:Z

    #@b
    .line 702
    iget v0, p1, Lcom/android/server/pm/PermissionsState$PermissionState;->mFlags:I

    #@d
    iput v0, p0, Lcom/android/server/pm/PermissionsState$PermissionState;->mFlags:I

    #@f
    .line 699
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 695
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 696
    iput-object p1, p0, Lcom/android/server/pm/PermissionsState$PermissionState;->mName:Ljava/lang/String;

    #@5
    .line 695
    return-void
.end method


# virtual methods
.method public getFlags()I
    .locals 1

    #@0
    .prologue
    .line 718
    iget v0, p0, Lcom/android/server/pm/PermissionsState$PermissionState;->mFlags:I

    #@2
    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 710
    iget-object v0, p0, Lcom/android/server/pm/PermissionsState$PermissionState;->mName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public isDefault()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 706
    iget-boolean v1, p0, Lcom/android/server/pm/PermissionsState$PermissionState;->mGranted:Z

    #@3
    if-nez v1, :cond_0

    #@5
    iget v1, p0, Lcom/android/server/pm/PermissionsState$PermissionState;->mFlags:I

    #@7
    if-nez v1, :cond_0

    #@9
    const/4 v0, 0x1

    #@a
    :cond_0
    return v0
.end method

.method public isGranted()Z
    .locals 1

    #@0
    .prologue
    .line 714
    iget-boolean v0, p0, Lcom/android/server/pm/PermissionsState$PermissionState;->mGranted:Z

    #@2
    return v0
.end method
