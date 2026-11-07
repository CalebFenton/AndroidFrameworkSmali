.class Landroid/app/AppOpInfo;
.super Ljava/lang/Object;
.source "AppOpInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/AppOpInfo$Builder;
    }
.end annotation


# instance fields
.field public final blacklist allowSystemRestrictionBypass:Landroid/app/AppOpsManager$RestrictionBypass;

.field public final blacklist code:I

.field public final blacklist defaultMode:I

.field public final blacklist disableReset:Z

.field public final blacklist forceCollectNotes:Z

.field public final blacklist name:Ljava/lang/String;

.field public final blacklist permission:Ljava/lang/String;

.field public final blacklist restrictRead:Z

.field public final blacklist restriction:Ljava/lang/String;

.field public final blacklist simpleName:Ljava/lang/String;

.field public final blacklist switchCode:I


# direct methods
.method constructor blacklist <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/AppOpsManager$RestrictionBypass;IZZZ)V
    .registers 13
    .param p1, "code"    # I
    .param p2, "switchCode"    # I
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "simpleName"    # Ljava/lang/String;
    .param p5, "permission"    # Ljava/lang/String;
    .param p6, "restriction"    # Ljava/lang/String;
    .param p7, "allowSystemRestrictionBypass"    # Landroid/app/AppOpsManager$RestrictionBypass;
    .param p8, "defaultMode"    # I
    .param p9, "disableReset"    # Z
    .param p10, "restrictRead"    # Z
    .param p11, "forceCollectNotes"    # Z

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    const/4 v0, -0x1

    if-lt p1, v0, :cond_2b

    .line 112
    if-lt p2, v0, :cond_25

    .line 113
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    iput p1, p0, Landroid/app/AppOpInfo;->code:I

    .line 116
    iput p2, p0, Landroid/app/AppOpInfo;->switchCode:I

    .line 117
    iput-object p3, p0, Landroid/app/AppOpInfo;->name:Ljava/lang/String;

    .line 118
    iput-object p4, p0, Landroid/app/AppOpInfo;->simpleName:Ljava/lang/String;

    .line 119
    iput-object p5, p0, Landroid/app/AppOpInfo;->permission:Ljava/lang/String;

    .line 120
    iput-object p6, p0, Landroid/app/AppOpInfo;->restriction:Ljava/lang/String;

    .line 121
    iput-object p7, p0, Landroid/app/AppOpInfo;->allowSystemRestrictionBypass:Landroid/app/AppOpsManager$RestrictionBypass;

    .line 122
    iput p8, p0, Landroid/app/AppOpInfo;->defaultMode:I

    .line 123
    iput-boolean p9, p0, Landroid/app/AppOpInfo;->disableReset:Z

    .line 124
    iput-boolean p10, p0, Landroid/app/AppOpInfo;->restrictRead:Z

    .line 125
    iput-boolean p11, p0, Landroid/app/AppOpInfo;->forceCollectNotes:Z

    .line 126
    return-void

    .line 112
    :cond_25
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 111
    :cond_2b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method
