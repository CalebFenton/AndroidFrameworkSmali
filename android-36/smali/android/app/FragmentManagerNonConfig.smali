.class public Landroid/app/FragmentManagerNonConfig;
.super Ljava/lang/Object;
.source "FragmentManagerNonConfig.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final greylist-max-o mChildNonConfigs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/FragmentManagerNonConfig;",
            ">;"
        }
    .end annotation
.end field

.field private final greylist-max-o mFragments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/Fragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor greylist-max-o <init>(Ljava/util/List;Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/Fragment;",
            ">;",
            "Ljava/util/List<",
            "Landroid/app/FragmentManagerNonConfig;",
            ">;)V"
        }
    .end annotation

    .line 40
    .local p1, "fragments":Ljava/util/List;, "Ljava/util/List<Landroid/app/Fragment;>;"
    .local p2, "childNonConfigs":Ljava/util/List;, "Ljava/util/List<Landroid/app/FragmentManagerNonConfig;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Landroid/app/FragmentManagerNonConfig;->mFragments:Ljava/util/List;

    .line 42
    iput-object p2, p0, Landroid/app/FragmentManagerNonConfig;->mChildNonConfigs:Ljava/util/List;

    .line 43
    return-void
.end method


# virtual methods
.method greylist-max-o getChildNonConfigs()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/FragmentManagerNonConfig;",
            ">;"
        }
    .end annotation

    .line 56
    iget-object v0, p0, Landroid/app/FragmentManagerNonConfig;->mChildNonConfigs:Ljava/util/List;

    return-object v0
.end method

.method greylist-max-o getFragments()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/Fragment;",
            ">;"
        }
    .end annotation

    .line 49
    iget-object v0, p0, Landroid/app/FragmentManagerNonConfig;->mFragments:Ljava/util/List;

    return-object v0
.end method
