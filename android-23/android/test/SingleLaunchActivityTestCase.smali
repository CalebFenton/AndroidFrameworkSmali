.class public abstract Landroid/test/SingleLaunchActivityTestCase;
.super Landroid/test/InstrumentationTestCase;
.source "SingleLaunchActivityTestCase.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/app/Activity;",
        ">",
        "Landroid/test/InstrumentationTestCase;"
    }
.end annotation


# static fields
.field private static sActivity:Landroid/app/Activity;

.field private static sActivityLaunchedFlag:Z

.field private static sTestCaseCounter:I


# instance fields
.field mActivityClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field

.field mPackage:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 34
    sput v0, Landroid/test/SingleLaunchActivityTestCase;->sTestCaseCounter:I

    #@3
    .line 35
    sput-boolean v0, Landroid/test/SingleLaunchActivityTestCase;->sActivityLaunchedFlag:Z

    #@5
    .line 29
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Class;)V
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 45
    .local p0, "this":Landroid/test/SingleLaunchActivityTestCase;, "Landroid/test/SingleLaunchActivityTestCase<TT;>;"
    .local p2, "activityClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0}, Landroid/test/InstrumentationTestCase;-><init>()V

    #@3
    .line 46
    iput-object p1, p0, Landroid/test/SingleLaunchActivityTestCase;->mPackage:Ljava/lang/String;

    #@5
    .line 47
    iput-object p2, p0, Landroid/test/SingleLaunchActivityTestCase;->mActivityClass:Ljava/lang/Class;

    #@7
    .line 48
    sget v0, Landroid/test/SingleLaunchActivityTestCase;->sTestCaseCounter:I

    #@9
    add-int/lit8 v0, v0, 0x1

    #@b
    sput v0, Landroid/test/SingleLaunchActivityTestCase;->sTestCaseCounter:I

    #@d
    .line 45
    return-void
.end method


# virtual methods
.method public getActivity()Landroid/app/Activity;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    #@0
    .prologue
    .line 57
    .local p0, "this":Landroid/test/SingleLaunchActivityTestCase;, "Landroid/test/SingleLaunchActivityTestCase<TT;>;"
    sget-object v0, Landroid/test/SingleLaunchActivityTestCase;->sActivity:Landroid/app/Activity;

    #@2
    return-object v0
.end method

.method protected setUp()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    #@0
    .prologue
    .line 62
    .local p0, "this":Landroid/test/SingleLaunchActivityTestCase;, "Landroid/test/SingleLaunchActivityTestCase<TT;>;"
    invoke-super {p0}, Landroid/test/InstrumentationTestCase;->setUp()V

    #@3
    .line 64
    sget-boolean v0, Landroid/test/SingleLaunchActivityTestCase;->sActivityLaunchedFlag:Z

    #@5
    if-nez v0, :cond_0

    #@7
    .line 66
    invoke-virtual {p0}, Landroid/test/SingleLaunchActivityTestCase;->getInstrumentation()Landroid/app/Instrumentation;

    #@a
    move-result-object v0

    #@b
    const/4 v1, 0x0

    #@c
    invoke-virtual {v0, v1}, Landroid/app/Instrumentation;->setInTouchMode(Z)V

    #@f
    .line 67
    iget-object v0, p0, Landroid/test/SingleLaunchActivityTestCase;->mPackage:Ljava/lang/String;

    #@11
    iget-object v1, p0, Landroid/test/SingleLaunchActivityTestCase;->mActivityClass:Ljava/lang/Class;

    #@13
    const/4 v2, 0x0

    #@14
    invoke-virtual {p0, v0, v1, v2}, Landroid/test/SingleLaunchActivityTestCase;->launchActivity(Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;)Landroid/app/Activity;

    #@17
    move-result-object v0

    #@18
    sput-object v0, Landroid/test/SingleLaunchActivityTestCase;->sActivity:Landroid/app/Activity;

    #@1a
    .line 68
    const/4 v0, 0x1

    #@1b
    sput-boolean v0, Landroid/test/SingleLaunchActivityTestCase;->sActivityLaunchedFlag:Z

    #@1d
    .line 61
    :cond_0
    return-void
.end method

.method protected tearDown()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    #@0
    .prologue
    .line 75
    .local p0, "this":Landroid/test/SingleLaunchActivityTestCase;, "Landroid/test/SingleLaunchActivityTestCase<TT;>;"
    sget v0, Landroid/test/SingleLaunchActivityTestCase;->sTestCaseCounter:I

    #@2
    add-int/lit8 v0, v0, -0x1

    #@4
    sput v0, Landroid/test/SingleLaunchActivityTestCase;->sTestCaseCounter:I

    #@6
    .line 76
    sget v0, Landroid/test/SingleLaunchActivityTestCase;->sTestCaseCounter:I

    #@8
    if-nez v0, :cond_0

    #@a
    .line 77
    sget-object v0, Landroid/test/SingleLaunchActivityTestCase;->sActivity:Landroid/app/Activity;

    #@c
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    #@f
    .line 79
    :cond_0
    invoke-super {p0}, Landroid/test/InstrumentationTestCase;->tearDown()V

    #@12
    .line 73
    return-void
.end method

.method public testActivityTestCaseSetUpProperly()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    #@0
    .prologue
    .line 83
    .local p0, "this":Landroid/test/SingleLaunchActivityTestCase;, "Landroid/test/SingleLaunchActivityTestCase<TT;>;"
    const-string/jumbo v0, "activity should be launched successfully"

    #@3
    sget-object v1, Landroid/test/SingleLaunchActivityTestCase;->sActivity:Landroid/app/Activity;

    #@5
    invoke-static {v0, v1}, Landroid/test/SingleLaunchActivityTestCase;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    #@8
    .line 82
    return-void
.end method
