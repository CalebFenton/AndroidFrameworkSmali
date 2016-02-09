.class public abstract Landroid/test/ActivityInstrumentationTestCase;
.super Landroid/test/ActivityTestCase;
.source "ActivityInstrumentationTestCase.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/app/Activity;",
        ">",
        "Landroid/test/ActivityTestCase;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field mActivityClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field

.field mInitialTouchMode:Z

.field mPackage:Ljava/lang/String;


# direct methods
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
    .line 48
    .local p0, "this":Landroid/test/ActivityInstrumentationTestCase;, "Landroid/test/ActivityInstrumentationTestCase<TT;>;"
    .local p2, "activityClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, v0}, Landroid/test/ActivityInstrumentationTestCase;-><init>(Ljava/lang/String;Ljava/lang/Class;Z)V

    #@4
    .line 47
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Class;Z)V
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;
    .param p3, "initialTouchMode"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<TT;>;Z)V"
        }
    .end annotation

    #@0
    .prologue
    .line 59
    .local p0, "this":Landroid/test/ActivityInstrumentationTestCase;, "Landroid/test/ActivityInstrumentationTestCase<TT;>;"
    .local p2, "activityClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0}, Landroid/test/ActivityTestCase;-><init>()V

    #@3
    .line 38
    const/4 v0, 0x0

    #@4
    iput-boolean v0, p0, Landroid/test/ActivityInstrumentationTestCase;->mInitialTouchMode:Z

    #@6
    .line 61
    iput-object p2, p0, Landroid/test/ActivityInstrumentationTestCase;->mActivityClass:Ljava/lang/Class;

    #@8
    .line 62
    iput-boolean p3, p0, Landroid/test/ActivityInstrumentationTestCase;->mInitialTouchMode:Z

    #@a
    .line 60
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
    .line 67
    .local p0, "this":Landroid/test/ActivityInstrumentationTestCase;, "Landroid/test/ActivityInstrumentationTestCase<TT;>;"
    invoke-super {p0}, Landroid/test/ActivityTestCase;->getActivity()Landroid/app/Activity;

    #@3
    move-result-object v0

    #@4
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
    .line 72
    .local p0, "this":Landroid/test/ActivityInstrumentationTestCase;, "Landroid/test/ActivityInstrumentationTestCase<TT;>;"
    invoke-super {p0}, Landroid/test/ActivityTestCase;->setUp()V

    #@3
    .line 74
    invoke-virtual {p0}, Landroid/test/ActivityInstrumentationTestCase;->getInstrumentation()Landroid/app/Instrumentation;

    #@6
    move-result-object v1

    #@7
    iget-boolean v2, p0, Landroid/test/ActivityInstrumentationTestCase;->mInitialTouchMode:Z

    #@9
    invoke-virtual {v1, v2}, Landroid/app/Instrumentation;->setInTouchMode(Z)V

    #@c
    .line 75
    invoke-virtual {p0}, Landroid/test/ActivityInstrumentationTestCase;->getInstrumentation()Landroid/app/Instrumentation;

    #@f
    move-result-object v1

    #@10
    invoke-virtual {v1}, Landroid/app/Instrumentation;->getTargetContext()Landroid/content/Context;

    #@13
    move-result-object v1

    #@14
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@17
    move-result-object v0

    #@18
    .line 76
    .local v0, "targetPackageName":Ljava/lang/String;
    iget-object v1, p0, Landroid/test/ActivityInstrumentationTestCase;->mActivityClass:Ljava/lang/Class;

    #@1a
    const/4 v2, 0x0

    #@1b
    invoke-virtual {p0, v0, v1, v2}, Landroid/test/ActivityInstrumentationTestCase;->launchActivity(Ljava/lang/String;Ljava/lang/Class;Landroid/os/Bundle;)Landroid/app/Activity;

    #@1e
    move-result-object v1

    #@1f
    invoke-virtual {p0, v1}, Landroid/test/ActivityInstrumentationTestCase;->setActivity(Landroid/app/Activity;)V

    #@22
    .line 71
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
    .line 81
    .local p0, "this":Landroid/test/ActivityInstrumentationTestCase;, "Landroid/test/ActivityInstrumentationTestCase<TT;>;"
    invoke-virtual {p0}, Landroid/test/ActivityInstrumentationTestCase;->getActivity()Landroid/app/Activity;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    #@7
    .line 82
    const/4 v0, 0x0

    #@8
    invoke-virtual {p0, v0}, Landroid/test/ActivityInstrumentationTestCase;->setActivity(Landroid/app/Activity;)V

    #@b
    .line 87
    const-class v0, Landroid/test/ActivityInstrumentationTestCase;

    #@d
    invoke-virtual {p0, v0}, Landroid/test/ActivityInstrumentationTestCase;->scrubClass(Ljava/lang/Class;)V

    #@10
    .line 89
    invoke-super {p0}, Landroid/test/ActivityTestCase;->tearDown()V

    #@13
    .line 80
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
    .line 93
    .local p0, "this":Landroid/test/ActivityInstrumentationTestCase;, "Landroid/test/ActivityInstrumentationTestCase<TT;>;"
    const-string/jumbo v0, "activity should be launched successfully"

    #@3
    invoke-virtual {p0}, Landroid/test/ActivityInstrumentationTestCase;->getActivity()Landroid/app/Activity;

    #@6
    move-result-object v1

    #@7
    invoke-static {v0, v1}, Landroid/test/ActivityInstrumentationTestCase;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    #@a
    .line 92
    return-void
.end method
