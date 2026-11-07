.class Landroid/app/FragmentManagerImpl$PopBackStackState;
.super Ljava/lang/Object;
.source "FragmentManager.java"

# interfaces
.implements Landroid/app/FragmentManagerImpl$OpGenerator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/FragmentManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PopBackStackState"
.end annotation


# instance fields
.field final greylist-max-o mFlags:I

.field final greylist-max-o mId:I

.field final greylist-max-o mName:Ljava/lang/String;

.field final synthetic blacklist this$0:Landroid/app/FragmentManagerImpl;


# direct methods
.method public constructor blacklist <init>(Landroid/app/FragmentManagerImpl;Ljava/lang/String;II)V
    .registers 5
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "id"    # I
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 3643
    iput-object p1, p0, Landroid/app/FragmentManagerImpl$PopBackStackState;->this$0:Landroid/app/FragmentManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3644
    iput-object p2, p0, Landroid/app/FragmentManagerImpl$PopBackStackState;->mName:Ljava/lang/String;

    .line 3645
    iput p3, p0, Landroid/app/FragmentManagerImpl$PopBackStackState;->mId:I

    .line 3646
    iput p4, p0, Landroid/app/FragmentManagerImpl$PopBackStackState;->mFlags:I

    .line 3647
    return-void
.end method


# virtual methods
.method public greylist-max-o generateOps(Ljava/util/ArrayList;Ljava/util/ArrayList;)Z
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/app/BackStackRecord;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .line 3652
    .local p1, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/BackStackRecord;>;"
    .local p2, "isRecordPop":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    iget-object v0, p0, Landroid/app/FragmentManagerImpl$PopBackStackState;->this$0:Landroid/app/FragmentManagerImpl;

    iget-object v0, v0, Landroid/app/FragmentManagerImpl;->mPrimaryNav:Landroid/app/Fragment;

    if-eqz v0, :cond_1e

    iget v0, p0, Landroid/app/FragmentManagerImpl$PopBackStackState;->mId:I

    if-gez v0, :cond_1e

    iget-object v0, p0, Landroid/app/FragmentManagerImpl$PopBackStackState;->mName:Ljava/lang/String;

    if-nez v0, :cond_1e

    .line 3655
    iget-object v0, p0, Landroid/app/FragmentManagerImpl$PopBackStackState;->this$0:Landroid/app/FragmentManagerImpl;

    iget-object v0, v0, Landroid/app/FragmentManagerImpl;->mPrimaryNav:Landroid/app/Fragment;

    iget-object v0, v0, Landroid/app/Fragment;->mChildFragmentManager:Landroid/app/FragmentManagerImpl;

    .line 3656
    .local v0, "childManager":Landroid/app/FragmentManager;
    if-eqz v0, :cond_1e

    invoke-virtual {v0}, Landroid/app/FragmentManager;->popBackStackImmediate()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 3659
    const/4 v1, 0x0

    return v1

    .line 3662
    .end local v0    # "childManager":Landroid/app/FragmentManager;
    :cond_1e
    iget-object v2, p0, Landroid/app/FragmentManagerImpl$PopBackStackState;->this$0:Landroid/app/FragmentManagerImpl;

    iget-object v5, p0, Landroid/app/FragmentManagerImpl$PopBackStackState;->mName:Ljava/lang/String;

    iget v6, p0, Landroid/app/FragmentManagerImpl$PopBackStackState;->mId:I

    iget v7, p0, Landroid/app/FragmentManagerImpl$PopBackStackState;->mFlags:I

    move-object v3, p1

    move-object v4, p2

    .end local p1    # "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/BackStackRecord;>;"
    .end local p2    # "isRecordPop":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    .local v3, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/BackStackRecord;>;"
    .local v4, "isRecordPop":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Boolean;>;"
    invoke-virtual/range {v2 .. v7}, Landroid/app/FragmentManagerImpl;->popBackStackState(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;II)Z

    move-result p1

    return p1
.end method
