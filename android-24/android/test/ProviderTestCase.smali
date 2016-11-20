.class public abstract Landroid/test/ProviderTestCase;
.super Landroid/test/InstrumentationTestCase;
.source "ProviderTestCase.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/content/ContentProvider;",
        ">",
        "Landroid/test/InstrumentationTestCase;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private mProvider:Landroid/content/ContentProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field mProviderAuthority:Ljava/lang/String;

.field mProviderClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mProviderContext:Landroid/test/IsolatedContext;

.field private mResolver:Landroid/test/mock/MockContentResolver;


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0
    .param p2, "providerAuthority"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    #@0
    .prologue
    .line 44
    .local p0, "this":Landroid/test/ProviderTestCase;, "Landroid/test/ProviderTestCase<TT;>;"
    .local p1, "providerClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0}, Landroid/test/InstrumentationTestCase;-><init>()V

    #@3
    .line 45
    iput-object p1, p0, Landroid/test/ProviderTestCase;->mProviderClass:Ljava/lang/Class;

    #@5
    .line 46
    iput-object p2, p0, Landroid/test/ProviderTestCase;->mProviderAuthority:Ljava/lang/String;

    #@7
    .line 44
    return-void
.end method

.method public static newResolverWithContentProviderFromSql(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/content/ContentResolver;
    .locals 7
    .param p0, "targetContext"    # Landroid/content/Context;
    .param p2, "authority"    # Ljava/lang/String;
    .param p3, "databaseName"    # Ljava/lang/String;
    .param p4, "databaseVersion"    # I
    .param p5, "sql"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/content/ContentProvider;",
            ">(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/ContentResolver;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/InstantiationException;
        }
    .end annotation

    #@0
    .prologue
    .line 99
    .local p1, "providerClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const-string/jumbo v1, "test."

    #@3
    .line 100
    .local v1, "filenamePrefix":Ljava/lang/String;
    new-instance v3, Landroid/test/mock/MockContentResolver;

    #@5
    invoke-direct {v3}, Landroid/test/mock/MockContentResolver;-><init>()V

    #@8
    .line 101
    .local v3, "resolver":Landroid/test/mock/MockContentResolver;
    new-instance v4, Landroid/test/RenamingDelegatingContext;

    #@a
    .line 102
    new-instance v5, Landroid/test/mock/MockContext;

    #@c
    invoke-direct {v5}, Landroid/test/mock/MockContext;-><init>()V

    #@f
    .line 104
    const-string/jumbo v6, "test."

    #@12
    .line 101
    invoke-direct {v4, v5, p0, v6}, Landroid/test/RenamingDelegatingContext;-><init>(Landroid/content/Context;Landroid/content/Context;Ljava/lang/String;)V

    #@15
    .line 105
    .local v4, "targetContextWrapper":Landroid/test/RenamingDelegatingContext;
    new-instance v0, Landroid/test/IsolatedContext;

    #@17
    invoke-direct {v0, v3, v4}, Landroid/test/IsolatedContext;-><init>(Landroid/content/ContentResolver;Landroid/content/Context;)V

    #@1a
    .line 107
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0, p3, p4, p5}, Landroid/database/DatabaseUtils;->createDbFromSqlStatements(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V

    #@1d
    .line 109
    invoke-static {v0, p1, p2}, Landroid/test/ProviderTestCase2;->createProviderForTest(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Landroid/content/ContentProvider;

    #@20
    move-result-object v2

    #@21
    .line 110
    .local v2, "provider":Landroid/content/ContentProvider;, "TT;"
    invoke-virtual {v3, p2, v2}, Landroid/test/mock/MockContentResolver;->addProvider(Ljava/lang/String;Landroid/content/ContentProvider;)V

    #@24
    .line 112
    return-object v3
.end method


# virtual methods
.method public getMockContentResolver()Landroid/test/mock/MockContentResolver;
    .locals 1

    #@0
    .prologue
    .line 88
    .local p0, "this":Landroid/test/ProviderTestCase;, "Landroid/test/ProviderTestCase<TT;>;"
    iget-object v0, p0, Landroid/test/ProviderTestCase;->mResolver:Landroid/test/mock/MockContentResolver;

    #@2
    return-object v0
.end method

.method public getMockContext()Landroid/test/IsolatedContext;
    .locals 1

    #@0
    .prologue
    .line 92
    .local p0, "this":Landroid/test/ProviderTestCase;, "Landroid/test/ProviderTestCase<TT;>;"
    iget-object v0, p0, Landroid/test/ProviderTestCase;->mProviderContext:Landroid/test/IsolatedContext;

    #@2
    return-object v0
.end method

.method public getProvider()Landroid/content/ContentProvider;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    #@0
    .prologue
    .line 55
    .local p0, "this":Landroid/test/ProviderTestCase;, "Landroid/test/ProviderTestCase<TT;>;"
    iget-object v0, p0, Landroid/test/ProviderTestCase;->mProvider:Landroid/content/ContentProvider;

    #@2
    return-object v0
.end method

.method protected setUp()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    #@0
    .prologue
    .line 60
    .local p0, "this":Landroid/test/ProviderTestCase;, "Landroid/test/ProviderTestCase<TT;>;"
    invoke-super {p0}, Landroid/test/InstrumentationTestCase;->setUp()V

    #@3
    .line 62
    new-instance v2, Landroid/test/mock/MockContentResolver;

    #@5
    invoke-direct {v2}, Landroid/test/mock/MockContentResolver;-><init>()V

    #@8
    iput-object v2, p0, Landroid/test/ProviderTestCase;->mResolver:Landroid/test/mock/MockContentResolver;

    #@a
    .line 63
    const-string/jumbo v0, "test."

    #@d
    .line 64
    .local v0, "filenamePrefix":Ljava/lang/String;
    new-instance v1, Landroid/test/RenamingDelegatingContext;

    #@f
    .line 65
    new-instance v2, Landroid/test/mock/MockContext;

    #@11
    invoke-direct {v2}, Landroid/test/mock/MockContext;-><init>()V

    #@14
    .line 66
    invoke-virtual {p0}, Landroid/test/ProviderTestCase;->getInstrumentation()Landroid/app/Instrumentation;

    #@17
    move-result-object v3

    #@18
    invoke-virtual {v3}, Landroid/app/Instrumentation;->getTargetContext()Landroid/content/Context;

    #@1b
    move-result-object v3

    #@1c
    .line 67
    const-string/jumbo v4, "test."

    #@1f
    .line 64
    invoke-direct {v1, v2, v3, v4}, Landroid/test/RenamingDelegatingContext;-><init>(Landroid/content/Context;Landroid/content/Context;Ljava/lang/String;)V

    #@22
    .line 68
    .local v1, "targetContextWrapper":Landroid/test/RenamingDelegatingContext;
    new-instance v2, Landroid/test/IsolatedContext;

    #@24
    iget-object v3, p0, Landroid/test/ProviderTestCase;->mResolver:Landroid/test/mock/MockContentResolver;

    #@26
    invoke-direct {v2, v3, v1}, Landroid/test/IsolatedContext;-><init>(Landroid/content/ContentResolver;Landroid/content/Context;)V

    #@29
    iput-object v2, p0, Landroid/test/ProviderTestCase;->mProviderContext:Landroid/test/IsolatedContext;

    #@2b
    .line 71
    iget-object v2, p0, Landroid/test/ProviderTestCase;->mProviderContext:Landroid/test/IsolatedContext;

    #@2d
    iget-object v3, p0, Landroid/test/ProviderTestCase;->mProviderClass:Ljava/lang/Class;

    #@2f
    iget-object v4, p0, Landroid/test/ProviderTestCase;->mProviderAuthority:Ljava/lang/String;

    #@31
    .line 70
    invoke-static {v2, v3, v4}, Landroid/test/ProviderTestCase2;->createProviderForTest(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Landroid/content/ContentProvider;

    #@34
    move-result-object v2

    #@35
    iput-object v2, p0, Landroid/test/ProviderTestCase;->mProvider:Landroid/content/ContentProvider;

    #@37
    .line 72
    iget-object v2, p0, Landroid/test/ProviderTestCase;->mResolver:Landroid/test/mock/MockContentResolver;

    #@39
    iget-object v3, p0, Landroid/test/ProviderTestCase;->mProviderAuthority:Ljava/lang/String;

    #@3b
    invoke-virtual {p0}, Landroid/test/ProviderTestCase;->getProvider()Landroid/content/ContentProvider;

    #@3e
    move-result-object v4

    #@3f
    invoke-virtual {v2, v3, v4}, Landroid/test/mock/MockContentResolver;->addProvider(Ljava/lang/String;Landroid/content/ContentProvider;)V

    #@42
    .line 59
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
    .line 83
    .local p0, "this":Landroid/test/ProviderTestCase;, "Landroid/test/ProviderTestCase<TT;>;"
    iget-object v0, p0, Landroid/test/ProviderTestCase;->mProvider:Landroid/content/ContentProvider;

    #@2
    invoke-virtual {v0}, Landroid/content/ContentProvider;->shutdown()V

    #@5
    .line 84
    invoke-super {p0}, Landroid/test/InstrumentationTestCase;->tearDown()V

    #@8
    .line 82
    return-void
.end method
