.class public abstract Landroid/test/ActivityUnitTestCase;
.super Landroid/test/ActivityTestCase;
.source "ActivityUnitTestCase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/test/ActivityUnitTestCase$MockParent;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/app/Activity;",
        ">",
        "Landroid/test/ActivityTestCase;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ActivityUnitTestCase"


# instance fields
.field private mActivityClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field

.field private mActivityContext:Landroid/content/Context;

.field private mApplication:Landroid/app/Application;

.field private mAttached:Z

.field private mCreated:Z

.field private mMockParent:Landroid/test/ActivityUnitTestCase$MockParent;


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
    .local p0, "this":Landroid/test/ActivityUnitTestCase;, "Landroid/test/ActivityUnitTestCase<TT;>;"
    .local p1, "activityClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    #@1
    .line 89
    invoke-direct {p0}, Landroid/test/ActivityTestCase;-><init>()V

    #@4
    .line 86
    iput-boolean v0, p0, Landroid/test/ActivityUnitTestCase;->mAttached:Z

    #@6
    .line 87
    iput-boolean v0, p0, Landroid/test/ActivityUnitTestCase;->mCreated:Z

    #@8
    .line 90
    iput-object p1, p0, Landroid/test/ActivityUnitTestCase;->mActivityClass:Ljava/lang/Class;

    #@a
    .line 89
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
    .line 95
    .local p0, "this":Landroid/test/ActivityUnitTestCase;, "Landroid/test/ActivityUnitTestCase<TT;>;"
    invoke-super {p0}, Landroid/test/ActivityTestCase;->getActivity()Landroid/app/Activity;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getFinishedActivityRequest()I
    .locals 1

    #@0
    .prologue
    .line 256
    .local p0, "this":Landroid/test/ActivityUnitTestCase;, "Landroid/test/ActivityUnitTestCase<TT;>;"
    iget-object v0, p0, Landroid/test/ActivityUnitTestCase;->mMockParent:Landroid/test/ActivityUnitTestCase$MockParent;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 257
    iget-object v0, p0, Landroid/test/ActivityUnitTestCase;->mMockParent:Landroid/test/ActivityUnitTestCase$MockParent;

    #@6
    iget v0, v0, Landroid/test/ActivityUnitTestCase$MockParent;->mFinishedActivityRequest:I

    #@8
    return v0

    #@9
    .line 259
    :cond_0
    const/4 v0, 0x0

    #@a
    return v0
.end method

.method public getRequestedOrientation()I
    .locals 1

    #@0
    .prologue
    .line 205
    .local p0, "this":Landroid/test/ActivityUnitTestCase;, "Landroid/test/ActivityUnitTestCase<TT;>;"
    iget-object v0, p0, Landroid/test/ActivityUnitTestCase;->mMockParent:Landroid/test/ActivityUnitTestCase$MockParent;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 206
    iget-object v0, p0, Landroid/test/ActivityUnitTestCase;->mMockParent:Landroid/test/ActivityUnitTestCase$MockParent;

    #@6
    iget v0, v0, Landroid/test/ActivityUnitTestCase$MockParent;->mRequestedOrientation:I

    #@8
    return v0

    #@9
    .line 208
    :cond_0
    const/4 v0, 0x0

    #@a
    return v0
.end method

.method public getStartedActivityIntent()Landroid/content/Intent;
    .locals 2

    #@0
    .prologue
    .local p0, "this":Landroid/test/ActivityUnitTestCase;, "Landroid/test/ActivityUnitTestCase<TT;>;"
    const/4 v1, 0x0

    #@1
    .line 218
    iget-object v0, p0, Landroid/test/ActivityUnitTestCase;->mMockParent:Landroid/test/ActivityUnitTestCase$MockParent;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 219
    iget-object v0, p0, Landroid/test/ActivityUnitTestCase;->mMockParent:Landroid/test/ActivityUnitTestCase$MockParent;

    #@7
    iget-object v0, v0, Landroid/test/ActivityUnitTestCase$MockParent;->mStartedActivityIntent:Landroid/content/Intent;

    #@9
    return-object v0

    #@a
    .line 221
    :cond_0
    return-object v1
.end method

.method public getStartedActivityRequest()I
    .locals 1

    #@0
    .prologue
    .line 230
    .local p0, "this":Landroid/test/ActivityUnitTestCase;, "Landroid/test/ActivityUnitTestCase<TT;>;"
    iget-object v0, p0, Landroid/test/ActivityUnitTestCase;->mMockParent:Landroid/test/ActivityUnitTestCase$MockParent;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 231
    iget-object v0, p0, Landroid/test/ActivityUnitTestCase;->mMockParent:Landroid/test/ActivityUnitTestCase$MockParent;

    #@6
    iget v0, v0, Landroid/test/ActivityUnitTestCase$MockParent;->mStartedActivityRequest:I

    #@8
    return v0

    #@9
    .line 233
    :cond_0
    const/4 v0, 0x0

    #@a
    return v0
.end method

.method public isFinishCalled()Z
    .locals 1

    #@0
    .prologue
    .line 244
    .local p0, "this":Landroid/test/ActivityUnitTestCase;, "Landroid/test/ActivityUnitTestCase<TT;>;"
    iget-object v0, p0, Landroid/test/ActivityUnitTestCase;->mMockParent:Landroid/test/ActivityUnitTestCase$MockParent;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 245
    iget-object v0, p0, Landroid/test/ActivityUnitTestCase;->mMockParent:Landroid/test/ActivityUnitTestCase$MockParent;

    #@6
    iget-boolean v0, v0, Landroid/test/ActivityUnitTestCase$MockParent;->mFinished:Z

    #@8
    return v0

    #@9
    .line 247
    :cond_0
    const/4 v0, 0x0

    #@a
    return v0
.end method

.method public setActivityContext(Landroid/content/Context;)V
    .locals 0
    .param p1, "activityContext"    # Landroid/content/Context;

    #@0
    .prologue
    .line 197
    .local p0, "this":Landroid/test/ActivityUnitTestCase;, "Landroid/test/ActivityUnitTestCase<TT;>;"
    iput-object p1, p0, Landroid/test/ActivityUnitTestCase;->mActivityContext:Landroid/content/Context;

    #@2
    .line 196
    return-void
.end method

.method public setApplication(Landroid/app/Application;)V
    .locals 0
    .param p1, "application"    # Landroid/app/Application;

    #@0
    .prologue
    .line 188
    .local p0, "this":Landroid/test/ActivityUnitTestCase;, "Landroid/test/ActivityUnitTestCase<TT;>;"
    iput-object p1, p0, Landroid/test/ActivityUnitTestCase;->mApplication:Landroid/app/Application;

    #@2
    .line 187
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
    .line 100
    .local p0, "this":Landroid/test/ActivityUnitTestCase;, "Landroid/test/ActivityUnitTestCase<TT;>;"
    invoke-super {p0}, Landroid/test/ActivityTestCase;->setUp()V

    #@3
    .line 103
    invoke-virtual {p0}, Landroid/test/ActivityUnitTestCase;->getInstrumentation()Landroid/app/Instrumentation;

    #@6
    move-result-object v0

    #@7
    invoke-virtual {v0}, Landroid/app/Instrumentation;->getTargetContext()Landroid/content/Context;

    #@a
    move-result-object v0

    #@b
    iput-object v0, p0, Landroid/test/ActivityUnitTestCase;->mActivityContext:Landroid/content/Context;

    #@d
    .line 99
    return-void
.end method

.method protected startActivity(Landroid/content/Intent;Landroid/os/Bundle;Ljava/lang/Object;)Landroid/app/Activity;
    .locals 16
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;
    .param p3, "lastNonConfigurationInstance"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Landroid/os/Bundle;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    #@0
    .prologue
    .line 128
    .local p0, "this":Landroid/test/ActivityUnitTestCase;, "Landroid/test/ActivityUnitTestCase<TT;>;"
    const-string/jumbo v1, "Activity already created"

    #@3
    move-object/from16 v0, p0

    #@5
    iget-boolean v2, v0, Landroid/test/ActivityUnitTestCase;->mCreated:Z

    #@7
    invoke-static {v1, v2}, Landroid/test/ActivityUnitTestCase;->assertFalse(Ljava/lang/String;Z)V

    #@a
    .line 130
    move-object/from16 v0, p0

    #@c
    iget-boolean v1, v0, Landroid/test/ActivityUnitTestCase;->mAttached:Z

    #@e
    if-nez v1, :cond_1

    #@10
    .line 131
    move-object/from16 v0, p0

    #@12
    iget-object v1, v0, Landroid/test/ActivityUnitTestCase;->mActivityClass:Ljava/lang/Class;

    #@14
    invoke-static {v1}, Landroid/test/ActivityUnitTestCase;->assertNotNull(Ljava/lang/Object;)V

    #@17
    .line 132
    const/4 v1, 0x0

    #@18
    move-object/from16 v0, p0

    #@1a
    invoke-virtual {v0, v1}, Landroid/test/ActivityUnitTestCase;->setActivity(Landroid/app/Activity;)V

    #@1d
    .line 133
    const/4 v14, 0x0

    #@1e
    .line 135
    .local v14, "newActivity":Landroid/app/Activity;, "TT;"
    const/4 v4, 0x0

    #@1f
    .line 136
    .local v4, "token":Landroid/os/IBinder;
    :try_start_0
    move-object/from16 v0, p0

    #@21
    iget-object v1, v0, Landroid/test/ActivityUnitTestCase;->mApplication:Landroid/app/Application;

    #@23
    if-nez v1, :cond_0

    #@25
    .line 137
    new-instance v1, Landroid/test/mock/MockApplication;

    #@27
    invoke-direct {v1}, Landroid/test/mock/MockApplication;-><init>()V

    #@2a
    move-object/from16 v0, p0

    #@2c
    invoke-virtual {v0, v1}, Landroid/test/ActivityUnitTestCase;->setApplication(Landroid/app/Application;)V

    #@2f
    .line 139
    :cond_0
    new-instance v12, Landroid/content/ComponentName;

    #@31
    move-object/from16 v0, p0

    #@33
    iget-object v1, v0, Landroid/test/ActivityUnitTestCase;->mActivityClass:Ljava/lang/Class;

    #@35
    invoke-virtual {v1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    #@38
    move-result-object v1

    #@39
    invoke-virtual {v1}, Ljava/lang/Package;->getName()Ljava/lang/String;

    #@3c
    move-result-object v1

    #@3d
    .line 140
    move-object/from16 v0, p0

    #@3f
    iget-object v2, v0, Landroid/test/ActivityUnitTestCase;->mActivityClass:Ljava/lang/Class;

    #@41
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@44
    move-result-object v2

    #@45
    .line 139
    invoke-direct {v12, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@48
    .line 141
    .local v12, "cn":Landroid/content/ComponentName;
    move-object/from16 v0, p1

    #@4a
    invoke-virtual {v0, v12}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    #@4d
    .line 142
    new-instance v7, Landroid/content/pm/ActivityInfo;

    #@4f
    invoke-direct {v7}, Landroid/content/pm/ActivityInfo;-><init>()V

    #@52
    .line 143
    .local v7, "info":Landroid/content/pm/ActivityInfo;
    move-object/from16 v0, p0

    #@54
    iget-object v1, v0, Landroid/test/ActivityUnitTestCase;->mActivityClass:Ljava/lang/Class;

    #@56
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    #@59
    move-result-object v8

    #@5a
    .line 144
    .local v8, "title":Ljava/lang/CharSequence;
    new-instance v1, Landroid/test/ActivityUnitTestCase$MockParent;

    #@5c
    const/4 v2, 0x0

    #@5d
    invoke-direct {v1, v2}, Landroid/test/ActivityUnitTestCase$MockParent;-><init>(Landroid/test/ActivityUnitTestCase$MockParent;)V

    #@60
    move-object/from16 v0, p0

    #@62
    iput-object v1, v0, Landroid/test/ActivityUnitTestCase;->mMockParent:Landroid/test/ActivityUnitTestCase$MockParent;

    #@64
    .line 145
    const/4 v10, 0x0

    #@65
    .line 147
    .local v10, "id":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Landroid/test/ActivityUnitTestCase;->getInstrumentation()Landroid/app/Instrumentation;

    #@68
    move-result-object v1

    #@69
    move-object/from16 v0, p0

    #@6b
    iget-object v2, v0, Landroid/test/ActivityUnitTestCase;->mActivityClass:Ljava/lang/Class;

    #@6d
    move-object/from16 v0, p0

    #@6f
    iget-object v3, v0, Landroid/test/ActivityUnitTestCase;->mActivityContext:Landroid/content/Context;

    #@71
    .line 148
    move-object/from16 v0, p0

    #@73
    iget-object v5, v0, Landroid/test/ActivityUnitTestCase;->mApplication:Landroid/app/Application;

    #@75
    move-object/from16 v0, p0

    #@77
    iget-object v9, v0, Landroid/test/ActivityUnitTestCase;->mMockParent:Landroid/test/ActivityUnitTestCase$MockParent;

    #@79
    move-object/from16 v6, p1

    #@7b
    move-object/from16 v11, p3

    #@7d
    .line 147
    invoke-virtual/range {v1 .. v11}, Landroid/app/Instrumentation;->newActivity(Ljava/lang/Class;Landroid/content/Context;Landroid/os/IBinder;Landroid/app/Application;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Ljava/lang/CharSequence;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/Object;)Landroid/app/Activity;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@80
    move-result-object v14

    #@81
    .line 155
    .end local v7    # "info":Landroid/content/pm/ActivityInfo;
    .end local v8    # "title":Ljava/lang/CharSequence;
    .end local v10    # "id":Ljava/lang/String;
    .end local v12    # "cn":Landroid/content/ComponentName;
    .end local v14    # "newActivity":Landroid/app/Activity;, "TT;"
    :goto_0
    invoke-static {v14}, Landroid/test/ActivityUnitTestCase;->assertNotNull(Ljava/lang/Object;)V

    #@84
    .line 156
    move-object/from16 v0, p0

    #@86
    invoke-virtual {v0, v14}, Landroid/test/ActivityUnitTestCase;->setActivity(Landroid/app/Activity;)V

    #@89
    .line 158
    const/4 v1, 0x1

    #@8a
    move-object/from16 v0, p0

    #@8c
    iput-boolean v1, v0, Landroid/test/ActivityUnitTestCase;->mAttached:Z

    #@8e
    .line 161
    .end local v4    # "token":Landroid/os/IBinder;
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/test/ActivityUnitTestCase;->getActivity()Landroid/app/Activity;

    #@91
    move-result-object v15

    #@92
    .line 162
    .local v15, "result":Landroid/app/Activity;, "TT;"
    if-eqz v15, :cond_2

    #@94
    .line 163
    invoke-virtual/range {p0 .. p0}, Landroid/test/ActivityUnitTestCase;->getInstrumentation()Landroid/app/Instrumentation;

    #@97
    move-result-object v1

    #@98
    invoke-virtual/range {p0 .. p0}, Landroid/test/ActivityUnitTestCase;->getActivity()Landroid/app/Activity;

    #@9b
    move-result-object v2

    #@9c
    move-object/from16 v0, p2

    #@9e
    invoke-virtual {v1, v2, v0}, Landroid/app/Instrumentation;->callActivityOnCreate(Landroid/app/Activity;Landroid/os/Bundle;)V

    #@a1
    .line 164
    const/4 v1, 0x1

    #@a2
    move-object/from16 v0, p0

    #@a4
    iput-boolean v1, v0, Landroid/test/ActivityUnitTestCase;->mCreated:Z

    #@a6
    .line 166
    :cond_2
    return-object v15

    #@a7
    .line 150
    .end local v15    # "result":Landroid/app/Activity;, "TT;"
    .restart local v4    # "token":Landroid/os/IBinder;
    .restart local v14    # "newActivity":Landroid/app/Activity;, "TT;"
    :catch_0
    move-exception v13

    #@a8
    .line 151
    .local v13, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "ActivityUnitTestCase"

    #@ab
    const-string/jumbo v2, "Catching exception"

    #@ae
    invoke-static {v1, v2, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@b1
    .line 152
    invoke-static {v14}, Landroid/test/ActivityUnitTestCase;->assertNotNull(Ljava/lang/Object;)V

    #@b4
    goto :goto_0
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
    .line 172
    .local p0, "this":Landroid/test/ActivityUnitTestCase;, "Landroid/test/ActivityUnitTestCase<TT;>;"
    const/4 v0, 0x0

    #@1
    invoke-virtual {p0, v0}, Landroid/test/ActivityUnitTestCase;->setActivity(Landroid/app/Activity;)V

    #@4
    .line 177
    const-class v0, Landroid/test/ActivityInstrumentationTestCase;

    #@6
    invoke-virtual {p0, v0}, Landroid/test/ActivityUnitTestCase;->scrubClass(Ljava/lang/Class;)V

    #@9
    .line 179
    invoke-super {p0}, Landroid/test/ActivityTestCase;->tearDown()V

    #@c
    .line 170
    return-void
.end method
