.class public abstract Landroid/test/ApplicationTestCase;
.super Landroid/test/AndroidTestCase;
.source "ApplicationTestCase.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/app/Application;",
        ">",
        "Landroid/test/AndroidTestCase;"
    }
.end annotation


# instance fields
.field private mApplication:Landroid/app/Application;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field mApplicationClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mAttached:Z

.field private mCreated:Z

.field private mSystemContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;)V"
        }
    .end annotation

    #@0
    .prologue
    .local p0, "this":Landroid/test/ApplicationTestCase;, "Landroid/test/ApplicationTestCase<TT;>;"
    .local p1, "applicationClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    #@1
    .line 65
    invoke-direct {p0}, Landroid/test/AndroidTestCase;-><init>()V

    #@4
    .line 70
    iput-boolean v0, p0, Landroid/test/ApplicationTestCase;->mAttached:Z

    #@6
    .line 71
    iput-boolean v0, p0, Landroid/test/ApplicationTestCase;->mCreated:Z

    #@8
    .line 66
    iput-object p1, p0, Landroid/test/ApplicationTestCase;->mApplicationClass:Ljava/lang/Class;

    #@a
    .line 65
    return-void
.end method

.method private setupApplication()V
    .locals 3

    #@0
    .prologue
    .line 96
    .local p0, "this":Landroid/test/ApplicationTestCase;, "Landroid/test/ApplicationTestCase<TT;>;"
    const/4 v1, 0x0

    #@1
    iput-object v1, p0, Landroid/test/ApplicationTestCase;->mApplication:Landroid/app/Application;

    #@3
    .line 98
    :try_start_0
    iget-object v1, p0, Landroid/test/ApplicationTestCase;->mApplicationClass:Ljava/lang/Class;

    #@5
    invoke-virtual {p0}, Landroid/test/ApplicationTestCase;->getContext()Landroid/content/Context;

    #@8
    move-result-object v2

    #@9
    invoke-static {v1, v2}, Landroid/app/Instrumentation;->newApplication(Ljava/lang/Class;Landroid/content/Context;)Landroid/app/Application;

    #@c
    move-result-object v1

    #@d
    iput-object v1, p0, Landroid/test/ApplicationTestCase;->mApplication:Landroid/app/Application;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@f
    .line 102
    :goto_0
    const/4 v1, 0x1

    #@10
    iput-boolean v1, p0, Landroid/test/ApplicationTestCase;->mAttached:Z

    #@12
    .line 95
    return-void

    #@13
    .line 99
    :catch_0
    move-exception v0

    #@14
    .line 100
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Landroid/test/ApplicationTestCase;->mApplication:Landroid/app/Application;

    #@16
    invoke-static {v1}, Landroid/test/ApplicationTestCase;->assertNotNull(Ljava/lang/Object;)V

    #@19
    goto :goto_0
.end method


# virtual methods
.method protected final createApplication()V
    .locals 1

    #@0
    .prologue
    .line 113
    .local p0, "this":Landroid/test/ApplicationTestCase;, "Landroid/test/ApplicationTestCase<TT;>;"
    iget-boolean v0, p0, Landroid/test/ApplicationTestCase;->mCreated:Z

    #@2
    invoke-static {v0}, Landroid/test/ApplicationTestCase;->assertFalse(Z)V

    #@5
    .line 115
    iget-boolean v0, p0, Landroid/test/ApplicationTestCase;->mAttached:Z

    #@7
    if-nez v0, :cond_0

    #@9
    .line 116
    invoke-direct {p0}, Landroid/test/ApplicationTestCase;->setupApplication()V

    #@c
    .line 118
    :cond_0
    iget-object v0, p0, Landroid/test/ApplicationTestCase;->mApplication:Landroid/app/Application;

    #@e
    invoke-static {v0}, Landroid/test/ApplicationTestCase;->assertNotNull(Ljava/lang/Object;)V

    #@11
    .line 120
    iget-object v0, p0, Landroid/test/ApplicationTestCase;->mApplication:Landroid/app/Application;

    #@13
    invoke-virtual {v0}, Landroid/app/Application;->onCreate()V

    #@16
    .line 121
    const/4 v0, 0x1

    #@17
    iput-boolean v0, p0, Landroid/test/ApplicationTestCase;->mCreated:Z

    #@19
    .line 112
    return-void
.end method

.method public getApplication()Landroid/app/Application;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    #@0
    .prologue
    .line 77
    .local p0, "this":Landroid/test/ApplicationTestCase;, "Landroid/test/ApplicationTestCase<TT;>;"
    iget-object v0, p0, Landroid/test/ApplicationTestCase;->mApplication:Landroid/app/Application;

    #@2
    return-object v0
.end method

.method public getSystemContext()Landroid/content/Context;
    .locals 1

    #@0
    .prologue
    .line 163
    .local p0, "this":Landroid/test/ApplicationTestCase;, "Landroid/test/ApplicationTestCase<TT;>;"
    iget-object v0, p0, Landroid/test/ApplicationTestCase;->mSystemContext:Landroid/content/Context;

    #@2
    return-object v0
.end method

.method protected setUp()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    #@0
    .prologue
    .line 86
    .local p0, "this":Landroid/test/ApplicationTestCase;, "Landroid/test/ApplicationTestCase<TT;>;"
    invoke-super {p0}, Landroid/test/AndroidTestCase;->setUp()V

    #@3
    .line 89
    invoke-virtual {p0}, Landroid/test/ApplicationTestCase;->getContext()Landroid/content/Context;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Landroid/test/ApplicationTestCase;->mSystemContext:Landroid/content/Context;

    #@9
    .line 85
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
    .line 145
    .local p0, "this":Landroid/test/ApplicationTestCase;, "Landroid/test/ApplicationTestCase<TT;>;"
    invoke-virtual {p0}, Landroid/test/ApplicationTestCase;->terminateApplication()V

    #@3
    .line 146
    const/4 v0, 0x0

    #@4
    iput-object v0, p0, Landroid/test/ApplicationTestCase;->mApplication:Landroid/app/Application;

    #@6
    .line 151
    const-class v0, Landroid/test/ApplicationTestCase;

    #@8
    invoke-virtual {p0, v0}, Landroid/test/ApplicationTestCase;->scrubClass(Ljava/lang/Class;)V

    #@b
    .line 153
    invoke-super {p0}, Landroid/test/AndroidTestCase;->tearDown()V

    #@e
    .line 144
    return-void
.end method

.method protected final terminateApplication()V
    .locals 1

    #@0
    .prologue
    .line 130
    .local p0, "this":Landroid/test/ApplicationTestCase;, "Landroid/test/ApplicationTestCase<TT;>;"
    iget-boolean v0, p0, Landroid/test/ApplicationTestCase;->mCreated:Z

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 131
    iget-object v0, p0, Landroid/test/ApplicationTestCase;->mApplication:Landroid/app/Application;

    #@6
    invoke-virtual {v0}, Landroid/app/Application;->onTerminate()V

    #@9
    .line 129
    :cond_0
    return-void
.end method

.method public final testApplicationTestCaseSetUpProperly()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    #@0
    .prologue
    .line 172
    .local p0, "this":Landroid/test/ApplicationTestCase;, "Landroid/test/ApplicationTestCase<TT;>;"
    invoke-direct {p0}, Landroid/test/ApplicationTestCase;->setupApplication()V

    #@3
    .line 173
    const-string/jumbo v0, "Application class could not be instantiated successfully"

    #@6
    iget-object v1, p0, Landroid/test/ApplicationTestCase;->mApplication:Landroid/app/Application;

    #@8
    invoke-static {v0, v1}, Landroid/test/ApplicationTestCase;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    #@b
    .line 171
    return-void
.end method
