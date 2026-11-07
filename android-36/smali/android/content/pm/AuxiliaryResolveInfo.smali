.class public final Landroid/content/pm/AuxiliaryResolveInfo;
.super Ljava/lang/Object;
.source "AuxiliaryResolveInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;
    }
.end annotation


# instance fields
.field public final greylist-max-o failureIntent:Landroid/content/Intent;

.field public final greylist-max-o filters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;",
            ">;"
        }
    .end annotation
.end field

.field public final blacklist hostDigestPrefixSecure:[I

.field public final greylist-max-o installFailureActivity:Landroid/content/ComponentName;

.field public final greylist-max-o needsPhaseTwo:Z

.field public final greylist-max-o token:Ljava/lang/String;


# direct methods
.method public constructor greylist-max-o <init>(Landroid/content/ComponentName;Landroid/content/Intent;Ljava/util/List;)V
    .registers 6
    .param p1, "failureActivity"    # Landroid/content/ComponentName;
    .param p2, "failureIntent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ComponentName;",
            "Landroid/content/Intent;",
            "Ljava/util/List<",
            "Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;",
            ">;)V"
        }
    .end annotation

    .line 70
    .local p3, "filters":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Landroid/content/pm/AuxiliaryResolveInfo;->installFailureActivity:Landroid/content/ComponentName;

    .line 72
    iput-object p3, p0, Landroid/content/pm/AuxiliaryResolveInfo;->filters:Ljava/util/List;

    .line 73
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/pm/AuxiliaryResolveInfo;->token:Ljava/lang/String;

    .line 74
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/content/pm/AuxiliaryResolveInfo;->needsPhaseTwo:Z

    .line 75
    iput-object p2, p0, Landroid/content/pm/AuxiliaryResolveInfo;->failureIntent:Landroid/content/Intent;

    .line 76
    iput-object v0, p0, Landroid/content/pm/AuxiliaryResolveInfo;->hostDigestPrefixSecure:[I

    .line 77
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/ComponentName;Ljava/lang/String;JLjava/lang/String;)V
    .registers 8
    .param p1, "failureActivity"    # Landroid/content/ComponentName;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "versionCode"    # J
    .param p5, "splitName"    # Ljava/lang/String;

    .line 82
    new-instance v0, Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;

    invoke-direct {v0, p2, p3, p4, p5}, Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Landroid/content/pm/AuxiliaryResolveInfo;-><init>(Landroid/content/ComponentName;Landroid/content/Intent;Ljava/util/List;)V

    .line 84
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;ZLandroid/content/Intent;Ljava/util/List;[I)V
    .registers 7
    .param p1, "token"    # Ljava/lang/String;
    .param p2, "needsPhase2"    # Z
    .param p3, "failureIntent"    # Landroid/content/Intent;
    .param p5, "hostDigestPrefix"    # [I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Landroid/content/Intent;",
            "Ljava/util/List<",
            "Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;",
            ">;[I)V"
        }
    .end annotation

    .line 57
    .local p4, "filters":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p1, p0, Landroid/content/pm/AuxiliaryResolveInfo;->token:Ljava/lang/String;

    .line 59
    iput-boolean p2, p0, Landroid/content/pm/AuxiliaryResolveInfo;->needsPhaseTwo:Z

    .line 60
    iput-object p3, p0, Landroid/content/pm/AuxiliaryResolveInfo;->failureIntent:Landroid/content/Intent;

    .line 61
    iput-object p4, p0, Landroid/content/pm/AuxiliaryResolveInfo;->filters:Ljava/util/List;

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/pm/AuxiliaryResolveInfo;->installFailureActivity:Landroid/content/ComponentName;

    .line 63
    iput-object p5, p0, Landroid/content/pm/AuxiliaryResolveInfo;->hostDigestPrefixSecure:[I

    .line 64
    return-void
.end method
