.class public Landroid/app/AppOpsManager$RestrictionBypass;
.super Ljava/lang/Object;
.source "AppOpsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/AppOpsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RestrictionBypass"
.end annotation


# static fields
.field public static blacklist UNRESTRICTED:Landroid/app/AppOpsManager$RestrictionBypass;


# instance fields
.field public blacklist isPrivileged:Z

.field public blacklist isRecordAudioRestrictionExcept:Z

.field public blacklist isSystemUid:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 3659
    new-instance v0, Landroid/app/AppOpsManager$RestrictionBypass;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Landroid/app/AppOpsManager$RestrictionBypass;-><init>(ZZZ)V

    sput-object v0, Landroid/app/AppOpsManager$RestrictionBypass;->UNRESTRICTED:Landroid/app/AppOpsManager$RestrictionBypass;

    return-void
.end method

.method public constructor blacklist <init>(ZZZ)V
    .registers 4
    .param p1, "isSystemUid"    # Z
    .param p2, "isPrivileged"    # Z
    .param p3, "isRecordAudioRestrictionExcept"    # Z

    .line 3653
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3654
    iput-boolean p1, p0, Landroid/app/AppOpsManager$RestrictionBypass;->isSystemUid:Z

    .line 3655
    iput-boolean p2, p0, Landroid/app/AppOpsManager$RestrictionBypass;->isPrivileged:Z

    .line 3656
    iput-boolean p3, p0, Landroid/app/AppOpsManager$RestrictionBypass;->isRecordAudioRestrictionExcept:Z

    .line 3657
    return-void
.end method
