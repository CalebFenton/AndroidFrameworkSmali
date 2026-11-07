.class public Lcom/android/internal/pm/permission/CompatibilityPermissionInfo;
.super Ljava/lang/Object;
.source "CompatibilityPermissionInfo.java"


# static fields
.field public static final blacklist COMPAT_PERMS:[Lcom/android/internal/pm/permission/CompatibilityPermissionInfo;


# instance fields
.field private final blacklist mName:Ljava/lang/String;

.field private final blacklist mSdkVersion:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 5

    .line 52
    new-instance v0, Lcom/android/internal/pm/permission/CompatibilityPermissionInfo;

    const-string v1, "android.permission.POST_NOTIFICATIONS"

    const/16 v2, 0x21

    invoke-direct {v0, v1, v2}, Lcom/android/internal/pm/permission/CompatibilityPermissionInfo;-><init>(Ljava/lang/String;I)V

    new-instance v1, Lcom/android/internal/pm/permission/CompatibilityPermissionInfo;

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3}, Lcom/android/internal/pm/permission/CompatibilityPermissionInfo;-><init>(Ljava/lang/String;I)V

    new-instance v2, Lcom/android/internal/pm/permission/CompatibilityPermissionInfo;

    const-string v4, "android.permission.READ_PHONE_STATE"

    invoke-direct {v2, v4, v3}, Lcom/android/internal/pm/permission/CompatibilityPermissionInfo;-><init>(Ljava/lang/String;I)V

    filled-new-array {v0, v1, v2}, [Lcom/android/internal/pm/permission/CompatibilityPermissionInfo;

    move-result-object v0

    sput-object v0, Lcom/android/internal/pm/permission/CompatibilityPermissionInfo;->COMPAT_PERMS:[Lcom/android/internal/pm/permission/CompatibilityPermissionInfo;

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;I)V
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "sdkVersion"    # I

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-object p1, p0, Lcom/android/internal/pm/permission/CompatibilityPermissionInfo;->mName:Ljava/lang/String;

    .line 82
    const-class v0, Landroid/annotation/NonNull;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/internal/pm/permission/CompatibilityPermissionInfo;->mName:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/android/internal/util/AnnotationValidations;->validate(Ljava/lang/Class;Landroid/annotation/NonNull;Ljava/lang/Object;)V

    .line 84
    iput p2, p0, Lcom/android/internal/pm/permission/CompatibilityPermissionInfo;->mSdkVersion:I

    .line 87
    return-void
.end method

.method private blacklist __metadata()V
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 105
    return-void
.end method


# virtual methods
.method public blacklist getName()Ljava/lang/String;
    .registers 2

    .line 91
    iget-object v0, p0, Lcom/android/internal/pm/permission/CompatibilityPermissionInfo;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getSdkVersion()I
    .registers 2

    .line 96
    iget v0, p0, Lcom/android/internal/pm/permission/CompatibilityPermissionInfo;->mSdkVersion:I

    return v0
.end method
