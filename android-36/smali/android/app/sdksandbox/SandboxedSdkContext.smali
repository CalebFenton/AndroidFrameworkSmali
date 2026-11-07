.class public final Landroid/app/sdksandbox/SandboxedSdkContext;
.super Landroid/content/ContextWrapper;
.source "SandboxedSdkContext.java"


# instance fields
.field private final blacklist mAssets:Landroid/content/res/AssetManager;

.field private final blacklist mCeDataDir:Ljava/io/File;

.field private final blacklist mClassLoader:Ljava/lang/ClassLoader;

.field private final blacklist mClientPackageName:Ljava/lang/String;

.field private final blacklist mDeDataDir:Ljava/io/File;

.field private final blacklist mIsCustomizedSdkContextEnabled:Z

.field private final blacklist mResources:Landroid/content/res/Resources;

.field private final blacklist mSdkName:Ljava/lang/String;

.field private final blacklist mSdkProviderInfo:Landroid/content/pm/ApplicationInfo;

.field private final blacklist mSdkSandboxSystemServiceRegistry:Landroid/app/sdksandbox/SdkSandboxSystemServiceRegistry;


# direct methods
.method public constructor blacklist <init>(Landroid/content/Context;Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 17
    .param p1, "baseContext"    # Landroid/content/Context;
    .param p2, "classLoader"    # Ljava/lang/ClassLoader;
    .param p3, "clientPackageName"    # Ljava/lang/String;
    .param p4, "info"    # Landroid/content/pm/ApplicationInfo;
    .param p5, "sdkName"    # Ljava/lang/String;
    .param p6, "sdkCeDataDir"    # Ljava/lang/String;
    .param p7, "sdkDeDataDir"    # Ljava/lang/String;

    .line 74
    nop

    .line 82
    invoke-static {}, Landroid/app/sdksandbox/SdkSandboxSystemServiceRegistry;->getInstance()Landroid/app/sdksandbox/SdkSandboxSystemServiceRegistry;

    move-result-object v8

    .line 74
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v8}, Landroid/app/sdksandbox/SandboxedSdkContext;-><init>(Landroid/content/Context;Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/sdksandbox/SdkSandboxSystemServiceRegistry;)V

    .line 83
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/sdksandbox/SdkSandboxSystemServiceRegistry;)V
    .registers 12
    .param p1, "baseContext"    # Landroid/content/Context;
    .param p2, "classLoader"    # Ljava/lang/ClassLoader;
    .param p3, "clientPackageName"    # Ljava/lang/String;
    .param p4, "info"    # Landroid/content/pm/ApplicationInfo;
    .param p5, "sdkName"    # Ljava/lang/String;
    .param p6, "sdkCeDataDir"    # Ljava/lang/String;
    .param p7, "sdkDeDataDir"    # Ljava/lang/String;
    .param p8, "sdkSandboxSystemServiceRegistry"    # Landroid/app/sdksandbox/SdkSandboxSystemServiceRegistry;

    .line 95
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 64
    invoke-static {}, Landroid/app/sdksandbox/SdkLevel;->isAtLeastU()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/sdksandbox/SandboxedSdkContext;->mIsCustomizedSdkContextEnabled:Z

    .line 96
    iput-object p3, p0, Landroid/app/sdksandbox/SandboxedSdkContext;->mClientPackageName:Ljava/lang/String;

    .line 97
    iput-object p5, p0, Landroid/app/sdksandbox/SandboxedSdkContext;->mSdkName:Ljava/lang/String;

    .line 98
    iput-object p4, p0, Landroid/app/sdksandbox/SandboxedSdkContext;->mSdkProviderInfo:Landroid/content/pm/ApplicationInfo;

    .line 99
    const/4 v0, 0x0

    .line 101
    .local v0, "resources":Landroid/content/res/Resources;
    :try_start_10
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p4}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v1
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_18} :catch_1a

    move-object v0, v1

    .line 103
    goto :goto_1b

    .line 102
    :catch_1a
    move-exception v1

    .line 105
    :goto_1b
    const/4 v1, 0x0

    if-eqz v0, :cond_27

    .line 106
    iput-object v0, p0, Landroid/app/sdksandbox/SandboxedSdkContext;->mResources:Landroid/content/res/Resources;

    .line 107
    invoke-virtual {v0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    iput-object v2, p0, Landroid/app/sdksandbox/SandboxedSdkContext;->mAssets:Landroid/content/res/AssetManager;

    goto :goto_2b

    .line 109
    :cond_27
    iput-object v1, p0, Landroid/app/sdksandbox/SandboxedSdkContext;->mResources:Landroid/content/res/Resources;

    .line 110
    iput-object v1, p0, Landroid/app/sdksandbox/SandboxedSdkContext;->mAssets:Landroid/content/res/AssetManager;

    .line 113
    :goto_2b
    if-eqz p6, :cond_33

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_34

    :cond_33
    move-object v2, v1

    :goto_34
    iput-object v2, p0, Landroid/app/sdksandbox/SandboxedSdkContext;->mCeDataDir:Ljava/io/File;

    .line 114
    if-eqz p7, :cond_3d

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :cond_3d
    iput-object v1, p0, Landroid/app/sdksandbox/SandboxedSdkContext;->mDeDataDir:Ljava/io/File;

    .line 116
    iput-object p8, p0, Landroid/app/sdksandbox/SandboxedSdkContext;->mSdkSandboxSystemServiceRegistry:Landroid/app/sdksandbox/SdkSandboxSystemServiceRegistry;

    .line 117
    iput-object p2, p0, Landroid/app/sdksandbox/SandboxedSdkContext;->mClassLoader:Ljava/lang/ClassLoader;

    .line 118
    return-void
.end method


# virtual methods
.method public blacklist createContextWithNewBase(Landroid/content/Context;)Landroid/app/sdksandbox/SandboxedSdkContext;
    .registers 10
    .param p1, "newBaseContext"    # Landroid/content/Context;

    .line 154
    new-instance v0, Landroid/app/sdksandbox/SandboxedSdkContext;

    iget-object v2, p0, Landroid/app/sdksandbox/SandboxedSdkContext;->mClassLoader:Ljava/lang/ClassLoader;

    iget-object v3, p0, Landroid/app/sdksandbox/SandboxedSdkContext;->mClientPackageName:Ljava/lang/String;

    iget-object v4, p0, Landroid/app/sdksandbox/SandboxedSdkContext;->mSdkProviderInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, p0, Landroid/app/sdksandbox/SandboxedSdkContext;->mSdkName:Ljava/lang/String;

    .line 160
    iget-object v1, p0, Landroid/app/sdksandbox/SandboxedSdkContext;->mCeDataDir:Ljava/io/File;

    const/4 v6, 0x0

    if-eqz v1, :cond_16

    iget-object v1, p0, Landroid/app/sdksandbox/SandboxedSdkContext;->mCeDataDir:Ljava/io/File;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_17

    :cond_16
    move-object v1, v6

    .line 161
    :goto_17
    iget-object v7, p0, Landroid/app/sdksandbox/SandboxedSdkContext;->mDeDataDir:Ljava/io/File;

    if-eqz v7, :cond_21

    iget-object v6, p0, Landroid/app/sdksandbox/SandboxedSdkContext;->mDeDataDir:Ljava/io/File;

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    :cond_21
    move-object v7, v6

    move-object v6, v1

    move-object v1, p1

    .end local p1    # "newBaseContext":Landroid/content/Context;
    .local v1, "newBaseContext":Landroid/content/Context;
    invoke-direct/range {v0 .. v7}, Landroid/app/sdksandbox/SandboxedSdkContext;-><init>(Landroid/content/Context;Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    return-object v0
.end method

.method public whitelist createCredentialProtectedStorageContext()Landroid/content/Context;
    .registers 3

    .line 129
    invoke-virtual {p0}, Landroid/app/sdksandbox/SandboxedSdkContext;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->createCredentialProtectedStorageContext()Landroid/content/Context;

    move-result-object v0

    .line 130
    .local v0, "newBaseContext":Landroid/content/Context;
    invoke-virtual {p0, v0}, Landroid/app/sdksandbox/SandboxedSdkContext;->createContextWithNewBase(Landroid/content/Context;)Landroid/app/sdksandbox/SandboxedSdkContext;

    move-result-object v1

    return-object v1
.end method

.method public whitelist createDeviceProtectedStorageContext()Landroid/content/Context;
    .registers 3

    .line 142
    invoke-virtual {p0}, Landroid/app/sdksandbox/SandboxedSdkContext;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object v0

    .line 143
    .local v0, "newBaseContext":Landroid/content/Context;
    invoke-virtual {p0, v0}, Landroid/app/sdksandbox/SandboxedSdkContext;->createContextWithNewBase(Landroid/content/Context;)Landroid/app/sdksandbox/SandboxedSdkContext;

    move-result-object v1

    return-object v1
.end method

.method public whitelist getAssets()Landroid/content/res/AssetManager;
    .registers 2

    .line 205
    iget-boolean v0, p0, Landroid/app/sdksandbox/SandboxedSdkContext;->mIsCustomizedSdkContextEnabled:Z

    if-eqz v0, :cond_d

    .line 206
    invoke-virtual {p0}, Landroid/app/sdksandbox/SandboxedSdkContext;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    return-object v0

    .line 208
    :cond_d
    iget-object v0, p0, Landroid/app/sdksandbox/SandboxedSdkContext;->mAssets:Landroid/content/res/AssetManager;

    return-object v0
.end method

.method public whitelist getClassLoader()Ljava/lang/ClassLoader;
    .registers 2

    .line 247
    iget-boolean v0, p0, Landroid/app/sdksandbox/SandboxedSdkContext;->mIsCustomizedSdkContextEnabled:Z

    if-eqz v0, :cond_d

    .line 248
    invoke-virtual {p0}, Landroid/app/sdksandbox/SandboxedSdkContext;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0

    .line 250
    :cond_d
    iget-object v0, p0, Landroid/app/sdksandbox/SandboxedSdkContext;->mClassLoader:Ljava/lang/ClassLoader;

    return-object v0
.end method

.method public blacklist getClientPackageName()Ljava/lang/String;
    .registers 2

    .line 188
    iget-object v0, p0, Landroid/app/sdksandbox/SandboxedSdkContext;->mClientPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getDataDir()Ljava/io/File;
    .registers 5

    .line 215
    iget-boolean v0, p0, Landroid/app/sdksandbox/SandboxedSdkContext;->mIsCustomizedSdkContextEnabled:Z

    if-eqz v0, :cond_d

    .line 216
    invoke-virtual {p0}, Landroid/app/sdksandbox/SandboxedSdkContext;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getDataDir()Ljava/io/File;

    move-result-object v0

    return-object v0

    .line 219
    :cond_d
    const/4 v0, 0x0

    .line 220
    .local v0, "res":Ljava/io/File;
    invoke-virtual {p0}, Landroid/app/sdksandbox/SandboxedSdkContext;->isCredentialProtectedStorage()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 221
    iget-object v0, p0, Landroid/app/sdksandbox/SandboxedSdkContext;->mCeDataDir:Ljava/io/File;

    goto :goto_1f

    .line 222
    :cond_17
    invoke-virtual {p0}, Landroid/app/sdksandbox/SandboxedSdkContext;->isDeviceProtectedStorage()Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 223
    iget-object v0, p0, Landroid/app/sdksandbox/SandboxedSdkContext;->mDeDataDir:Ljava/io/File;

    .line 225
    :cond_1f
    :goto_1f
    if-eqz v0, :cond_22

    .line 228
    return-object v0

    .line 226
    :cond_22
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No data directory found for sdk: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/app/sdksandbox/SandboxedSdkContext;->getSdkName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist getResources()Landroid/content/res/Resources;
    .registers 2

    .line 195
    iget-boolean v0, p0, Landroid/app/sdksandbox/SandboxedSdkContext;->mIsCustomizedSdkContextEnabled:Z

    if-eqz v0, :cond_d

    .line 196
    invoke-virtual {p0}, Landroid/app/sdksandbox/SandboxedSdkContext;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0

    .line 198
    :cond_d
    iget-object v0, p0, Landroid/app/sdksandbox/SandboxedSdkContext;->mResources:Landroid/content/res/Resources;

    return-object v0
.end method

.method public blacklist getSdkName()Ljava/lang/String;
    .registers 2

    .line 169
    iget-object v0, p0, Landroid/app/sdksandbox/SandboxedSdkContext;->mSdkName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getSdkPackageName()Ljava/lang/String;
    .registers 2

    .line 179
    iget-object v0, p0, Landroid/app/sdksandbox/SandboxedSdkContext;->mSdkProviderInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;

    .line 234
    if-nez p1, :cond_4

    .line 235
    const/4 v0, 0x0

    return-object v0

    .line 237
    :cond_4
    invoke-virtual {p0}, Landroid/app/sdksandbox/SandboxedSdkContext;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 238
    .local v0, "service":Ljava/lang/Object;
    iget-object v1, p0, Landroid/app/sdksandbox/SandboxedSdkContext;->mSdkSandboxSystemServiceRegistry:Landroid/app/sdksandbox/SdkSandboxSystemServiceRegistry;

    invoke-virtual {v1, p1}, Landroid/app/sdksandbox/SdkSandboxSystemServiceRegistry;->getServiceMutator(Ljava/lang/String;)Landroid/app/sdksandbox/SdkSandboxSystemServiceRegistry$ServiceMutator;

    move-result-object v1

    .line 239
    .local v1, "serviceMutator":Landroid/app/sdksandbox/SdkSandboxSystemServiceRegistry$ServiceMutator;
    if-eqz v1, :cond_18

    .line 240
    invoke-interface {v1, v0, p0}, Landroid/app/sdksandbox/SdkSandboxSystemServiceRegistry$ServiceMutator;->setContext(Ljava/lang/Object;Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    .line 242
    :cond_18
    return-object v0
.end method
