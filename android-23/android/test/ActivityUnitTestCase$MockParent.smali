.class Landroid/test/ActivityUnitTestCase$MockParent;
.super Landroid/app/Activity;
.source "ActivityUnitTestCase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/test/ActivityUnitTestCase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MockParent"
.end annotation


# instance fields
.field public mFinished:Z

.field public mFinishedActivityRequest:I

.field public mRequestedOrientation:I

.field public mStartedActivityIntent:Landroid/content/Intent;

.field public mStartedActivityRequest:I


# direct methods
.method private constructor <init>()V
    .locals 3

    #@0
    .prologue
    .local p0, "this":Landroid/test/ActivityUnitTestCase$MockParent;, "Landroid/test/ActivityUnitTestCase<TT;>.MockParent;"
    const/4 v2, 0x0

    #@1
    const/4 v1, -0x1

    #@2
    .line 275
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    #@5
    .line 277
    iput v2, p0, Landroid/test/ActivityUnitTestCase$MockParent;->mRequestedOrientation:I

    #@7
    .line 278
    const/4 v0, 0x0

    #@8
    iput-object v0, p0, Landroid/test/ActivityUnitTestCase$MockParent;->mStartedActivityIntent:Landroid/content/Intent;

    #@a
    .line 279
    iput v1, p0, Landroid/test/ActivityUnitTestCase$MockParent;->mStartedActivityRequest:I

    #@c
    .line 280
    iput-boolean v2, p0, Landroid/test/ActivityUnitTestCase$MockParent;->mFinished:Z

    #@e
    .line 281
    iput v1, p0, Landroid/test/ActivityUnitTestCase$MockParent;->mFinishedActivityRequest:I

    #@10
    .line 275
    return-void
.end method

.method synthetic constructor <init>(Landroid/test/ActivityUnitTestCase$MockParent;)V
    .locals 0

    #@0
    .prologue
    .local p0, "this":Landroid/test/ActivityUnitTestCase$MockParent;, "Landroid/test/ActivityUnitTestCase<TT;>.MockParent;"
    invoke-direct {p0}, Landroid/test/ActivityUnitTestCase$MockParent;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public finishActivityFromChild(Landroid/app/Activity;I)V
    .locals 1
    .param p1, "child"    # Landroid/app/Activity;
    .param p2, "requestCode"    # I

    #@0
    .prologue
    .line 340
    .local p0, "this":Landroid/test/ActivityUnitTestCase$MockParent;, "Landroid/test/ActivityUnitTestCase<TT;>.MockParent;"
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Landroid/test/ActivityUnitTestCase$MockParent;->mFinished:Z

    #@3
    .line 341
    iput p2, p0, Landroid/test/ActivityUnitTestCase$MockParent;->mFinishedActivityRequest:I

    #@5
    .line 339
    return-void
.end method

.method public finishFromChild(Landroid/app/Activity;)V
    .locals 1
    .param p1, "child"    # Landroid/app/Activity;

    #@0
    .prologue
    .line 329
    .local p0, "this":Landroid/test/ActivityUnitTestCase$MockParent;, "Landroid/test/ActivityUnitTestCase<TT;>.MockParent;"
    const/4 v0, 0x1

    #@1
    iput-boolean v0, p0, Landroid/test/ActivityUnitTestCase$MockParent;->mFinished:Z

    #@3
    .line 328
    return-void
.end method

.method public getRequestedOrientation()I
    .locals 1

    #@0
    .prologue
    .line 296
    .local p0, "this":Landroid/test/ActivityUnitTestCase$MockParent;, "Landroid/test/ActivityUnitTestCase<TT;>.MockParent;"
    iget v0, p0, Landroid/test/ActivityUnitTestCase$MockParent;->mRequestedOrientation:I

    #@2
    return v0
.end method

.method public getWindow()Landroid/view/Window;
    .locals 1

    #@0
    .prologue
    .line 304
    .local p0, "this":Landroid/test/ActivityUnitTestCase$MockParent;, "Landroid/test/ActivityUnitTestCase<TT;>.MockParent;"
    const/4 v0, 0x0

    #@1
    return-object v0
.end method

.method public setRequestedOrientation(I)V
    .locals 0
    .param p1, "requestedOrientation"    # I

    #@0
    .prologue
    .line 288
    .local p0, "this":Landroid/test/ActivityUnitTestCase$MockParent;, "Landroid/test/ActivityUnitTestCase<TT;>.MockParent;"
    iput p1, p0, Landroid/test/ActivityUnitTestCase$MockParent;->mRequestedOrientation:I

    #@2
    .line 287
    return-void
.end method

.method public startActivityFromChild(Landroid/app/Activity;Landroid/content/Intent;I)V
    .locals 0
    .param p1, "child"    # Landroid/app/Activity;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "requestCode"    # I

    #@0
    .prologue
    .line 316
    .local p0, "this":Landroid/test/ActivityUnitTestCase$MockParent;, "Landroid/test/ActivityUnitTestCase<TT;>.MockParent;"
    iput-object p2, p0, Landroid/test/ActivityUnitTestCase$MockParent;->mStartedActivityIntent:Landroid/content/Intent;

    #@2
    .line 317
    iput p3, p0, Landroid/test/ActivityUnitTestCase$MockParent;->mStartedActivityRequest:I

    #@4
    .line 315
    return-void
.end method
