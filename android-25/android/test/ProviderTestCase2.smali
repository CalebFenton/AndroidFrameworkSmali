.class public abstract Landroid/test/ProviderTestCase2;
.super Landroid/test/AndroidTestCase;
.source "ProviderTestCase2.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/test/ProviderTestCase2$MockContext2;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/content/ContentProvider;",
        ">",
        "Landroid/test/AndroidTestCase;"
    }
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
    .line 103
    .local p0, "this":Landroid/test/ProviderTestCase2;, "Landroid/test/ProviderTestCase2<TT;>;"
    .local p1, "providerClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-direct {p0}, Landroid/test/AndroidTestCase;-><init>()V

    #@3
    .line 104
    iput-object p1, p0, Landroid/test/ProviderTestCase2;->mProviderClass:Ljava/lang/Class;

    #@5
    .line 105
    iput-object p2, p0, Landroid/test/ProviderTestCase2;->mProviderAuthority:Ljava/lang/String;

    #@7
    .line 103
    return-void
.end method

.method static createProviderForTest(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Landroid/content/ContentProvider;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p2, "authority"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/content/ContentProvider;",
            ">(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/String;",
            ")TT;"
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
    .line 152
    .local p1, "providerClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    #@3
    move-result-object v0

    #@4
    check-cast v0, Landroid/content/ContentProvider;

    #@6
    .line 153
    .local v0, "instance":Landroid/content/ContentProvider;, "TT;"
    new-instance v1, Landroid/content/pm/ProviderInfo;

    #@8
    invoke-direct {v1}, Landroid/content/pm/ProviderInfo;-><init>()V

    #@b
    .line 154
    .local v1, "providerInfo":Landroid/content/pm/ProviderInfo;
    iput-object p2, v1, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    #@d
    .line 155
    invoke-virtual {v0, p0, v1}, Landroid/content/ContentProvider;->attachInfoForTesting(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V

    #@10
    .line 156
    return-object v0
.end method

.method public static newResolverWithContentProviderFromSql(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/content/ContentResolver;
    .locals 5
    .param p0, "targetContext"    # Landroid/content/Context;
    .param p1, "filenamePrefix"    # Ljava/lang/String;
    .param p3, "authority"    # Ljava/lang/String;
    .param p4, "databaseName"    # Ljava/lang/String;
    .param p5, "databaseVersion"    # I
    .param p6, "sql"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroid/content/ContentProvider;",
            ">(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
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
    .line 224
    .local p2, "providerClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    new-instance v2, Landroid/test/mock/MockContentResolver;

    #@2
    invoke-direct {v2}, Landroid/test/mock/MockContentResolver;-><init>()V

    #@5
    .line 225
    .local v2, "resolver":Landroid/test/mock/MockContentResolver;
    new-instance v3, Landroid/test/RenamingDelegatingContext;

    #@7
    .line 226
    new-instance v4, Landroid/test/mock/MockContext;

    #@9
    invoke-direct {v4}, Landroid/test/mock/MockContext;-><init>()V

    #@c
    .line 225
    invoke-direct {v3, v4, p0, p1}, Landroid/test/RenamingDelegatingContext;-><init>(Landroid/content/Context;Landroid/content/Context;Ljava/lang/String;)V

    #@f
    .line 229
    .local v3, "targetContextWrapper":Landroid/test/RenamingDelegatingContext;
    new-instance v0, Landroid/test/IsolatedContext;

    #@11
    invoke-direct {v0, v2, v3}, Landroid/test/IsolatedContext;-><init>(Landroid/content/ContentResolver;Landroid/content/Context;)V

    #@14
    .line 230
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0, p4, p5, p6}, Landroid/database/DatabaseUtils;->createDbFromSqlStatements(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V

    #@17
    .line 232
    invoke-static {v0, p2, p3}, Landroid/test/ProviderTestCase2;->createProviderForTest(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Landroid/content/ContentProvider;

    #@1a
    move-result-object v1

    #@1b
    .line 233
    .local v1, "provider":Landroid/content/ContentProvider;, "TT;"
    invoke-virtual {v2, p3, v1}, Landroid/test/mock/MockContentResolver;->addProvider(Ljava/lang/String;Landroid/content/ContentProvider;)V

    #@1e
    .line 235
    return-object v2
.end method


# virtual methods
.method public getMockContentResolver()Landroid/test/mock/MockContentResolver;
    .locals 1

    #@0
    .prologue
    .line 178
    .local p0, "this":Landroid/test/ProviderTestCase2;, "Landroid/test/ProviderTestCase2<TT;>;"
    iget-object v0, p0, Landroid/test/ProviderTestCase2;->mResolver:Landroid/test/mock/MockContentResolver;

    #@2
    return-object v0
.end method

.method public getMockContext()Landroid/test/IsolatedContext;
    .locals 1

    #@0
    .prologue
    .line 186
    .local p0, "this":Landroid/test/ProviderTestCase2;, "Landroid/test/ProviderTestCase2<TT;>;"
    iget-object v0, p0, Landroid/test/ProviderTestCase2;->mProviderContext:Landroid/test/IsolatedContext;

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
    .line 115
    .local p0, "this":Landroid/test/ProviderTestCase2;, "Landroid/test/ProviderTestCase2<TT;>;"
    iget-object v0, p0, Landroid/test/ProviderTestCase2;->mProvider:Landroid/content/ContentProvider;

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
    .line 131
    .local p0, "this":Landroid/test/ProviderTestCase2;, "Landroid/test/ProviderTestCase2<TT;>;"
    invoke-super {p0}, Landroid/test/AndroidTestCase;->setUp()V

    #@3
    .line 133
    new-instance v2, Landroid/test/mock/MockContentResolver;

    #@5
    invoke-direct {v2}, Landroid/test/mock/MockContentResolver;-><init>()V

    #@8
    iput-object v2, p0, Landroid/test/ProviderTestCase2;->mResolver:Landroid/test/mock/MockContentResolver;

    #@a
    .line 134
    const-string/jumbo v0, "test."

    #@d
    .line 135
    .local v0, "filenamePrefix":Ljava/lang/String;
    new-instance v1, Landroid/test/RenamingDelegatingContext;

    #@f
    .line 137
    new-instance v2, Landroid/test/ProviderTestCase2$MockContext2;

    #@11
    const/4 v3, 0x0

    #@12
    invoke-direct {v2, p0, v3}, Landroid/test/ProviderTestCase2$MockContext2;-><init>(Landroid/test/ProviderTestCase2;Landroid/test/ProviderTestCase2$MockContext2;)V

    #@15
    .line 139
    invoke-virtual {p0}, Landroid/test/ProviderTestCase2;->getContext()Landroid/content/Context;

    #@18
    move-result-object v3

    #@19
    .line 140
    const-string/jumbo v4, "test."

    #@1c
    .line 135
    invoke-direct {v1, v2, v3, v4}, Landroid/test/RenamingDelegatingContext;-><init>(Landroid/content/Context;Landroid/content/Context;Ljava/lang/String;)V

    #@1f
    .line 141
    .local v1, "targetContextWrapper":Landroid/test/RenamingDelegatingContext;
    new-instance v2, Landroid/test/IsolatedContext;

    #@21
    iget-object v3, p0, Landroid/test/ProviderTestCase2;->mResolver:Landroid/test/mock/MockContentResolver;

    #@23
    invoke-direct {v2, v3, v1}, Landroid/test/IsolatedContext;-><init>(Landroid/content/ContentResolver;Landroid/content/Context;)V

    #@26
    iput-object v2, p0, Landroid/test/ProviderTestCase2;->mProviderContext:Landroid/test/IsolatedContext;

    #@28
    .line 142
    iget-object v2, p0, Landroid/test/ProviderTestCase2;->mProviderContext:Landroid/test/IsolatedContext;

    #@2a
    iget-object v3, p0, Landroid/test/ProviderTestCase2;->mProviderClass:Ljava/lang/Class;

    #@2c
    iget-object v4, p0, Landroid/test/ProviderTestCase2;->mProviderAuthority:Ljava/lang/String;

    #@2e
    invoke-static {v2, v3, v4}, Landroid/test/ProviderTestCase2;->createProviderForTest(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)Landroid/content/ContentProvider;

    #@31
    move-result-object v2

    #@32
    iput-object v2, p0, Landroid/test/ProviderTestCase2;->mProvider:Landroid/content/ContentProvider;

    #@34
    .line 143
    iget-object v2, p0, Landroid/test/ProviderTestCase2;->mResolver:Landroid/test/mock/MockContentResolver;

    #@36
    iget-object v3, p0, Landroid/test/ProviderTestCase2;->mProviderAuthority:Ljava/lang/String;

    #@38
    invoke-virtual {p0}, Landroid/test/ProviderTestCase2;->getProvider()Landroid/content/ContentProvider;

    #@3b
    move-result-object v4

    #@3c
    invoke-virtual {v2, v3, v4}, Landroid/test/mock/MockContentResolver;->addProvider(Ljava/lang/String;Landroid/content/ContentProvider;)V

    #@3f
    .line 130
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
    .line 167
    .local p0, "this":Landroid/test/ProviderTestCase2;, "Landroid/test/ProviderTestCase2<TT;>;"
    iget-object v0, p0, Landroid/test/ProviderTestCase2;->mProvider:Landroid/content/ContentProvider;

    #@2
    invoke-virtual {v0}, Landroid/content/ContentProvider;->shutdown()V

    #@5
    .line 168
    invoke-super {p0}, Landroid/test/AndroidTestCase;->tearDown()V

    #@8
    .line 166
    return-void
.end method
