.class public abstract Landroid/test/ServiceTestCase;
.super Landroid/test/AndroidTestCase;
.source "ServiceTestCase.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/app/Service;",
        ">",
        "Landroid/test/AndroidTestCase;"
    }
.end annotation


# instance fields
.field private mApplication:Landroid/app/Application;

.field private mService:Landroid/app/Service;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private mServiceAttached:Z

.field private mServiceBound:Z

.field mServiceClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mServiceCreated:Z

.field private mServiceId:I

.field private mServiceIntent:Landroid/content/Intent;

.field private mServiceStarted:Z

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
    .local p0, "this":Landroid/test/ServiceTestCase;, "Landroid/test/ServiceTestCase<TT;>;"
    .local p1, "serviceClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    #@1
    .line 107
    invoke-direct {p0}, Landroid/test/AndroidTestCase;-><init>()V

    #@4
    .line 112
    iput-boolean v0, p0, Landroid/test/ServiceTestCase;->mServiceAttached:Z

    #@6
    .line 113
    iput-boolean v0, p0, Landroid/test/ServiceTestCase;->mServiceCreated:Z

    #@8
    .line 114
    iput-boolean v0, p0, Landroid/test/ServiceTestCase;->mServiceStarted:Z

    #@a
    .line 115
    iput-boolean v0, p0, Landroid/test/ServiceTestCase;->mServiceBound:Z

    #@c
    .line 116
    const/4 v0, 0x0

    #@d
    iput-object v0, p0, Landroid/test/ServiceTestCase;->mServiceIntent:Landroid/content/Intent;

    #@f
    .line 108
    iput-object p1, p0, Landroid/test/ServiceTestCase;->mServiceClass:Ljava/lang/Class;

    #@11
    .line 107
    return-void
.end method


# virtual methods
.method protected bindService(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .local p0, "this":Landroid/test/ServiceTestCase;, "Landroid/test/ServiceTestCase<TT;>;"
    const/4 v2, 0x1

    #@1
    .line 231
    iget-boolean v1, p0, Landroid/test/ServiceTestCase;->mServiceAttached:Z

    #@3
    if-nez v1, :cond_0

    #@5
    .line 232
    invoke-virtual {p0}, Landroid/test/ServiceTestCase;->setupService()V

    #@8
    .line 234
    :cond_0
    iget-object v1, p0, Landroid/test/ServiceTestCase;->mService:Landroid/app/Service;

    #@a
    invoke-static {v1}, Landroid/test/ServiceTestCase;->assertNotNull(Ljava/lang/Object;)V

    #@d
    .line 236
    iget-boolean v1, p0, Landroid/test/ServiceTestCase;->mServiceCreated:Z

    #@f
    if-nez v1, :cond_1

    #@11
    .line 237
    iget-object v1, p0, Landroid/test/ServiceTestCase;->mService:Landroid/app/Service;

    #@13
    invoke-virtual {v1}, Landroid/app/Service;->onCreate()V

    #@16
    .line 238
    iput-boolean v2, p0, Landroid/test/ServiceTestCase;->mServiceCreated:Z

    #@18
    .line 241
    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->cloneFilter()Landroid/content/Intent;

    #@1b
    move-result-object v1

    #@1c
    iput-object v1, p0, Landroid/test/ServiceTestCase;->mServiceIntent:Landroid/content/Intent;

    #@1e
    .line 242
    iget-object v1, p0, Landroid/test/ServiceTestCase;->mService:Landroid/app/Service;

    #@20
    invoke-virtual {v1, p1}, Landroid/app/Service;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;

    #@23
    move-result-object v0

    #@24
    .line 244
    .local v0, "result":Landroid/os/IBinder;
    iput-boolean v2, p0, Landroid/test/ServiceTestCase;->mServiceBound:Z

    #@26
    .line 245
    return-object v0
.end method

.method public getApplication()Landroid/app/Application;
    .locals 1

    #@0
    .prologue
    .line 313
    .local p0, "this":Landroid/test/ServiceTestCase;, "Landroid/test/ServiceTestCase<TT;>;"
    iget-object v0, p0, Landroid/test/ServiceTestCase;->mApplication:Landroid/app/Application;

    #@2
    return-object v0
.end method

.method public getService()Landroid/app/Service;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    #@0
    .prologue
    .line 124
    .local p0, "this":Landroid/test/ServiceTestCase;, "Landroid/test/ServiceTestCase<TT;>;"
    iget-object v0, p0, Landroid/test/ServiceTestCase;->mService:Landroid/app/Service;

    #@2
    return-object v0
.end method

.method public getSystemContext()Landroid/content/Context;
    .locals 1

    #@0
    .prologue
    .line 323
    .local p0, "this":Landroid/test/ServiceTestCase;, "Landroid/test/ServiceTestCase<TT;>;"
    iget-object v0, p0, Landroid/test/ServiceTestCase;->mSystemContext:Landroid/content/Context;

    #@2
    return-object v0
.end method

.method public setApplication(Landroid/app/Application;)V
    .locals 0
    .param p1, "application"    # Landroid/app/Application;

    #@0
    .prologue
    .line 302
    .local p0, "this":Landroid/test/ServiceTestCase;, "Landroid/test/ServiceTestCase<TT;>;"
    iput-object p1, p0, Landroid/test/ServiceTestCase;->mApplication:Landroid/app/Application;

    #@2
    .line 301
    return-void
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
    .line 136
    .local p0, "this":Landroid/test/ServiceTestCase;, "Landroid/test/ServiceTestCase<TT;>;"
    invoke-super {p0}, Landroid/test/AndroidTestCase;->setUp()V

    #@3
    .line 139
    invoke-virtual {p0}, Landroid/test/ServiceTestCase;->getContext()Landroid/content/Context;

    #@6
    move-result-object v0

    #@7
    iput-object v0, p0, Landroid/test/ServiceTestCase;->mSystemContext:Landroid/content/Context;

    #@9
    .line 135
    return-void
.end method

.method protected setupService()V
    .locals 8

    #@0
    .prologue
    .local p0, "this":Landroid/test/ServiceTestCase;, "Landroid/test/ServiceTestCase<TT;>;"
    const/4 v2, 0x0

    #@1
    .line 151
    iput-object v2, p0, Landroid/test/ServiceTestCase;->mService:Landroid/app/Service;

    #@3
    .line 153
    :try_start_0
    iget-object v0, p0, Landroid/test/ServiceTestCase;->mServiceClass:Ljava/lang/Class;

    #@5
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    #@8
    move-result-object v0

    #@9
    check-cast v0, Landroid/app/Service;

    #@b
    iput-object v0, p0, Landroid/test/ServiceTestCase;->mService:Landroid/app/Service;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@d
    .line 157
    :goto_0
    invoke-virtual {p0}, Landroid/test/ServiceTestCase;->getApplication()Landroid/app/Application;

    #@10
    move-result-object v0

    #@11
    if-nez v0, :cond_0

    #@13
    .line 158
    new-instance v0, Landroid/test/mock/MockApplication;

    #@15
    invoke-direct {v0}, Landroid/test/mock/MockApplication;-><init>()V

    #@18
    invoke-virtual {p0, v0}, Landroid/test/ServiceTestCase;->setApplication(Landroid/app/Application;)V

    #@1b
    .line 160
    :cond_0
    iget-object v0, p0, Landroid/test/ServiceTestCase;->mService:Landroid/app/Service;

    #@1d
    .line 161
    invoke-virtual {p0}, Landroid/test/ServiceTestCase;->getContext()Landroid/content/Context;

    #@20
    move-result-object v1

    #@21
    .line 163
    iget-object v3, p0, Landroid/test/ServiceTestCase;->mServiceClass:Ljava/lang/Class;

    #@23
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@26
    move-result-object v3

    #@27
    .line 165
    invoke-virtual {p0}, Landroid/test/ServiceTestCase;->getApplication()Landroid/app/Application;

    #@2a
    move-result-object v5

    #@2b
    move-object v4, v2

    #@2c
    move-object v6, v2

    #@2d
    .line 160
    invoke-virtual/range {v0 .. v6}, Landroid/app/Service;->attach(Landroid/content/Context;Landroid/app/ActivityThread;Ljava/lang/String;Landroid/os/IBinder;Landroid/app/Application;Ljava/lang/Object;)V

    #@30
    .line 169
    iget-object v0, p0, Landroid/test/ServiceTestCase;->mService:Landroid/app/Service;

    #@32
    invoke-static {v0}, Landroid/test/ServiceTestCase;->assertNotNull(Ljava/lang/Object;)V

    #@35
    .line 171
    new-instance v0, Ljava/util/Random;

    #@37
    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    #@3a
    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    #@3d
    move-result v0

    #@3e
    iput v0, p0, Landroid/test/ServiceTestCase;->mServiceId:I

    #@40
    .line 172
    const/4 v0, 0x1

    #@41
    iput-boolean v0, p0, Landroid/test/ServiceTestCase;->mServiceAttached:Z

    #@43
    .line 150
    return-void

    #@44
    .line 154
    :catch_0
    move-exception v7

    #@45
    .line 155
    .local v7, "e":Ljava/lang/Exception;
    iget-object v0, p0, Landroid/test/ServiceTestCase;->mService:Landroid/app/Service;

    #@47
    invoke-static {v0}, Landroid/test/ServiceTestCase;->assertNotNull(Ljava/lang/Object;)V

    #@4a
    goto :goto_0
.end method

.method protected shutdownService()V
    .locals 3

    #@0
    .prologue
    .local p0, "this":Landroid/test/ServiceTestCase;, "Landroid/test/ServiceTestCase<TT;>;"
    const/4 v2, 0x0

    #@1
    .line 254
    iget-boolean v0, p0, Landroid/test/ServiceTestCase;->mServiceStarted:Z

    #@3
    if-eqz v0, :cond_2

    #@5
    .line 255
    iget-object v0, p0, Landroid/test/ServiceTestCase;->mService:Landroid/app/Service;

    #@7
    invoke-virtual {v0}, Landroid/app/Service;->stopSelf()V

    #@a
    .line 256
    iput-boolean v2, p0, Landroid/test/ServiceTestCase;->mServiceStarted:Z

    #@c
    .line 261
    :cond_0
    :goto_0
    iget-boolean v0, p0, Landroid/test/ServiceTestCase;->mServiceCreated:Z

    #@e
    if-eqz v0, :cond_1

    #@10
    .line 262
    iget-object v0, p0, Landroid/test/ServiceTestCase;->mService:Landroid/app/Service;

    #@12
    invoke-virtual {v0}, Landroid/app/Service;->onDestroy()V

    #@15
    .line 263
    iput-boolean v2, p0, Landroid/test/ServiceTestCase;->mServiceCreated:Z

    #@17
    .line 253
    :cond_1
    return-void

    #@18
    .line 257
    :cond_2
    iget-boolean v0, p0, Landroid/test/ServiceTestCase;->mServiceBound:Z

    #@1a
    if-eqz v0, :cond_0

    #@1c
    .line 258
    iget-object v0, p0, Landroid/test/ServiceTestCase;->mService:Landroid/app/Service;

    #@1e
    iget-object v1, p0, Landroid/test/ServiceTestCase;->mServiceIntent:Landroid/content/Intent;

    #@20
    invoke-virtual {v0, v1}, Landroid/app/Service;->onUnbind(Landroid/content/Intent;)Z

    #@23
    .line 259
    iput-boolean v2, p0, Landroid/test/ServiceTestCase;->mServiceBound:Z

    #@25
    goto :goto_0
.end method

.method protected startService(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    .local p0, "this":Landroid/test/ServiceTestCase;, "Landroid/test/ServiceTestCase<TT;>;"
    const/4 v3, 0x1

    #@1
    .line 186
    iget-boolean v0, p0, Landroid/test/ServiceTestCase;->mServiceAttached:Z

    #@3
    if-nez v0, :cond_0

    #@5
    .line 187
    invoke-virtual {p0}, Landroid/test/ServiceTestCase;->setupService()V

    #@8
    .line 189
    :cond_0
    iget-object v0, p0, Landroid/test/ServiceTestCase;->mService:Landroid/app/Service;

    #@a
    invoke-static {v0}, Landroid/test/ServiceTestCase;->assertNotNull(Ljava/lang/Object;)V

    #@d
    .line 191
    iget-boolean v0, p0, Landroid/test/ServiceTestCase;->mServiceCreated:Z

    #@f
    if-nez v0, :cond_1

    #@11
    .line 192
    iget-object v0, p0, Landroid/test/ServiceTestCase;->mService:Landroid/app/Service;

    #@13
    invoke-virtual {v0}, Landroid/app/Service;->onCreate()V

    #@16
    .line 193
    iput-boolean v3, p0, Landroid/test/ServiceTestCase;->mServiceCreated:Z

    #@18
    .line 195
    :cond_1
    iget-object v0, p0, Landroid/test/ServiceTestCase;->mService:Landroid/app/Service;

    #@1a
    iget v1, p0, Landroid/test/ServiceTestCase;->mServiceId:I

    #@1c
    const/4 v2, 0x0

    #@1d
    invoke-virtual {v0, p1, v2, v1}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    #@20
    .line 197
    iput-boolean v3, p0, Landroid/test/ServiceTestCase;->mServiceStarted:Z

    #@22
    .line 185
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
    .line 282
    .local p0, "this":Landroid/test/ServiceTestCase;, "Landroid/test/ServiceTestCase<TT;>;"
    invoke-virtual {p0}, Landroid/test/ServiceTestCase;->shutdownService()V

    #@3
    .line 283
    const/4 v0, 0x0

    #@4
    iput-object v0, p0, Landroid/test/ServiceTestCase;->mService:Landroid/app/Service;

    #@6
    .line 288
    const-class v0, Landroid/test/ServiceTestCase;

    #@8
    invoke-virtual {p0, v0}, Landroid/test/ServiceTestCase;->scrubClass(Ljava/lang/Class;)V

    #@b
    .line 290
    invoke-super {p0}, Landroid/test/AndroidTestCase;->tearDown()V

    #@e
    .line 281
    return-void
.end method

.method public testServiceTestCaseSetUpProperly()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    #@0
    .prologue
    .line 334
    .local p0, "this":Landroid/test/ServiceTestCase;, "Landroid/test/ServiceTestCase<TT;>;"
    invoke-virtual {p0}, Landroid/test/ServiceTestCase;->setupService()V

    #@3
    .line 335
    const-string/jumbo v0, "service should be launched successfully"

    #@6
    iget-object v1, p0, Landroid/test/ServiceTestCase;->mService:Landroid/app/Service;

    #@8
    invoke-static {v0, v1}, Landroid/test/ServiceTestCase;->assertNotNull(Ljava/lang/String;Ljava/lang/Object;)V

    #@b
    .line 333
    return-void
.end method
