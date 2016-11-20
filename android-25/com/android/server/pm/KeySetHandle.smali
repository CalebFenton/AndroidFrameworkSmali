.class Lcom/android/server/pm/KeySetHandle;
.super Landroid/os/Binder;
.source "KeySetHandle.java"


# instance fields
.field private final mId:J

.field private mRefCount:I


# direct methods
.method protected constructor <init>(J)V
    .locals 1
    .param p1, "id"    # J

    #@0
    .prologue
    .line 25
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 26
    iput-wide p1, p0, Lcom/android/server/pm/KeySetHandle;->mId:J

    #@5
    .line 27
    const/4 v0, 0x1

    #@6
    iput v0, p0, Lcom/android/server/pm/KeySetHandle;->mRefCount:I

    #@8
    .line 25
    return-void
.end method

.method protected constructor <init>(JI)V
    .locals 1
    .param p1, "id"    # J
    .param p3, "refCount"    # I

    #@0
    .prologue
    .line 33
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    #@3
    .line 34
    iput-wide p1, p0, Lcom/android/server/pm/KeySetHandle;->mId:J

    #@5
    .line 35
    iput p3, p0, Lcom/android/server/pm/KeySetHandle;->mRefCount:I

    #@7
    .line 33
    return-void
.end method


# virtual methods
.method protected decrRefCountLPw()I
    .locals 1

    #@0
    .prologue
    .line 60
    iget v0, p0, Lcom/android/server/pm/KeySetHandle;->mRefCount:I

    #@2
    add-int/lit8 v0, v0, -0x1

    #@4
    iput v0, p0, Lcom/android/server/pm/KeySetHandle;->mRefCount:I

    #@6
    .line 61
    iget v0, p0, Lcom/android/server/pm/KeySetHandle;->mRefCount:I

    #@8
    return v0
.end method

.method public getId()J
    .locals 2

    #@0
    .prologue
    .line 39
    iget-wide v0, p0, Lcom/android/server/pm/KeySetHandle;->mId:J

    #@2
    return-wide v0
.end method

.method protected getRefCountLPr()I
    .locals 1

    #@0
    .prologue
    .line 43
    iget v0, p0, Lcom/android/server/pm/KeySetHandle;->mRefCount:I

    #@2
    return v0
.end method

.method protected incrRefCountLPw()V
    .locals 1

    #@0
    .prologue
    .line 55
    iget v0, p0, Lcom/android/server/pm/KeySetHandle;->mRefCount:I

    #@2
    add-int/lit8 v0, v0, 0x1

    #@4
    iput v0, p0, Lcom/android/server/pm/KeySetHandle;->mRefCount:I

    #@6
    .line 56
    return-void
.end method

.method protected setRefCountLPw(I)V
    .locals 0
    .param p1, "newCount"    # I

    #@0
    .prologue
    .line 50
    iput p1, p0, Lcom/android/server/pm/KeySetHandle;->mRefCount:I

    #@2
    .line 51
    return-void
.end method
