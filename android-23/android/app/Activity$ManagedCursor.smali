.class final Landroid/app/Activity$ManagedCursor;
.super Ljava/lang/Object;
.source "Activity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/Activity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ManagedCursor"
.end annotation


# instance fields
.field private final mCursor:Landroid/database/Cursor;

.field private mReleased:Z

.field private mUpdated:Z


# direct methods
.method static synthetic -get0(Landroid/app/Activity$ManagedCursor;)Landroid/database/Cursor;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/app/Activity$ManagedCursor;->mCursor:Landroid/database/Cursor;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Landroid/app/Activity$ManagedCursor;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Landroid/app/Activity$ManagedCursor;->mReleased:Z

    #@2
    return v0
.end method

.method static synthetic -get2(Landroid/app/Activity$ManagedCursor;)Z
    .locals 1

    #@0
    iget-boolean v0, p0, Landroid/app/Activity$ManagedCursor;->mUpdated:Z

    #@2
    return v0
.end method

.method static synthetic -set0(Landroid/app/Activity$ManagedCursor;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Landroid/app/Activity$ManagedCursor;->mReleased:Z

    #@2
    return p1
.end method

.method static synthetic -set1(Landroid/app/Activity$ManagedCursor;Z)Z
    .locals 0

    #@0
    iput-boolean p1, p0, Landroid/app/Activity$ManagedCursor;->mUpdated:Z

    #@2
    return p1
.end method

.method constructor <init>(Landroid/database/Cursor;)V
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 761
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 762
    iput-object p1, p0, Landroid/app/Activity$ManagedCursor;->mCursor:Landroid/database/Cursor;

    #@6
    .line 763
    iput-boolean v0, p0, Landroid/app/Activity$ManagedCursor;->mReleased:Z

    #@8
    .line 764
    iput-boolean v0, p0, Landroid/app/Activity$ManagedCursor;->mUpdated:Z

    #@a
    .line 761
    return-void
.end method
