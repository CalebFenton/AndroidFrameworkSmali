.class Lcom/android/server/pm/PackageManagerServiceCompilerMapping;
.super Ljava/lang/Object;
.source "PackageManagerServiceCompilerMapping.java"


# static fields
.field static final REASON_STRINGS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    #@0
    .prologue
    const/16 v3, 0x9

    #@2
    .line 28
    new-array v0, v3, [Ljava/lang/String;

    #@4
    .line 29
    const-string/jumbo v1, "first-boot"

    #@7
    const/4 v2, 0x0

    #@8
    aput-object v1, v0, v2

    #@a
    const-string/jumbo v1, "boot"

    #@d
    const/4 v2, 0x1

    #@e
    aput-object v1, v0, v2

    #@10
    const-string/jumbo v1, "install"

    #@13
    const/4 v2, 0x2

    #@14
    aput-object v1, v0, v2

    #@16
    const-string/jumbo v1, "bg-dexopt"

    #@19
    const/4 v2, 0x3

    #@1a
    aput-object v1, v0, v2

    #@1c
    const-string/jumbo v1, "ab-ota"

    #@1f
    const/4 v2, 0x4

    #@20
    aput-object v1, v0, v2

    #@22
    const-string/jumbo v1, "nsys-library"

    #@25
    const/4 v2, 0x5

    #@26
    aput-object v1, v0, v2

    #@28
    const-string/jumbo v1, "shared-apk"

    #@2b
    const/4 v2, 0x6

    #@2c
    aput-object v1, v0, v2

    #@2e
    .line 30
    const-string/jumbo v1, "forced-dexopt"

    #@31
    const/4 v2, 0x7

    #@32
    aput-object v1, v0, v2

    #@34
    const-string/jumbo v1, "core-app"

    #@37
    const/16 v2, 0x8

    #@39
    aput-object v1, v0, v2

    #@3b
    .line 28
    sput-object v0, Lcom/android/server/pm/PackageManagerServiceCompilerMapping;->REASON_STRINGS:[Ljava/lang/String;

    #@3d
    .line 35
    sget-object v0, Lcom/android/server/pm/PackageManagerServiceCompilerMapping;->REASON_STRINGS:[Ljava/lang/String;

    #@3f
    array-length v0, v0

    #@40
    if-eq v3, v0, :cond_0

    #@42
    .line 36
    new-instance v0, Ljava/lang/IllegalStateException;

    #@44
    const-string/jumbo v1, "REASON_STRINGS not correct"

    #@47
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@4a
    throw v0

    #@4b
    .line 26
    :cond_0
    return-void
.end method

.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method static checkProperties()V
    .locals 7

    #@0
    .prologue
    .line 77
    const/4 v3, 0x0

    #@1
    .line 79
    .local v3, "toThrow":Ljava/lang/RuntimeException;
    const/4 v1, 0x0

    #@2
    .end local v3    # "toThrow":Ljava/lang/RuntimeException;
    .local v1, "reason":I
    :goto_0
    const/16 v4, 0x8

    #@4
    if-gt v1, v4, :cond_3

    #@6
    .line 82
    :try_start_0
    invoke-static {v1}, Lcom/android/server/pm/PackageManagerServiceCompilerMapping;->getSystemPropertyName(I)Ljava/lang/String;

    #@9
    move-result-object v2

    #@a
    .line 83
    .local v2, "sysPropName":Ljava/lang/String;
    if-eqz v2, :cond_0

    #@c
    .line 84
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    #@f
    move-result v4

    #@10
    .line 83
    if-nez v4, :cond_0

    #@12
    .line 85
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    #@15
    move-result v4

    #@16
    const/16 v5, 0x1f

    #@18
    if-le v4, v5, :cond_2

    #@1a
    .line 86
    :cond_0
    new-instance v4, Ljava/lang/IllegalStateException;

    #@1c
    new-instance v5, Ljava/lang/StringBuilder;

    #@1e
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #@21
    const-string/jumbo v6, "Reason system property name \""

    #@24
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v5

    #@28
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v5

    #@2c
    .line 87
    const-string/jumbo v6, "\" for reason "

    #@2f
    .line 86
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v5

    #@33
    .line 87
    sget-object v6, Lcom/android/server/pm/PackageManagerServiceCompilerMapping;->REASON_STRINGS:[Ljava/lang/String;

    #@35
    aget-object v6, v6, v1

    #@37
    .line 86
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v5

    #@3b
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3e
    move-result-object v5

    #@3f
    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@42
    throw v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@43
    .line 92
    .end local v2    # "sysPropName":Ljava/lang/String;
    :catch_0
    move-exception v0

    #@44
    .line 93
    .local v0, "exc":Ljava/lang/Exception;
    if-nez v3, :cond_1

    #@46
    .line 94
    new-instance v3, Ljava/lang/IllegalStateException;

    #@48
    const-string/jumbo v4, "PMS compiler filter settings are bad."

    #@4b
    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@4e
    .line 96
    :cond_1
    invoke-virtual {v3, v0}, Ljava/lang/RuntimeException;->addSuppressed(Ljava/lang/Throwable;)V

    #@51
    .line 79
    .end local v0    # "exc":Ljava/lang/Exception;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    #@53
    goto :goto_0

    #@54
    .line 91
    .restart local v2    # "sysPropName":Ljava/lang/String;
    :cond_2
    :try_start_1
    invoke-static {v1}, Lcom/android/server/pm/PackageManagerServiceCompilerMapping;->getAndCheckValidity(I)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    #@57
    goto :goto_1

    #@58
    .line 100
    .end local v2    # "sysPropName":Ljava/lang/String;
    :cond_3
    if-eqz v3, :cond_4

    #@5a
    .line 101
    throw v3

    #@5b
    .line 74
    :cond_4
    return-void
.end method

.method private static getAndCheckValidity(I)Ljava/lang/String;
    .locals 4
    .param p0, "reason"    # I

    #@0
    .prologue
    .line 51
    invoke-static {p0}, Lcom/android/server/pm/PackageManagerServiceCompilerMapping;->getSystemPropertyName(I)Ljava/lang/String;

    #@3
    move-result-object v1

    #@4
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    #@7
    move-result-object v0

    #@8
    .line 52
    .local v0, "sysPropValue":Ljava/lang/String;
    if-eqz v0, :cond_1

    #@a
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    #@d
    move-result v1

    #@e
    if-nez v1, :cond_1

    #@10
    .line 53
    invoke-static {v0}, Ldalvik/system/DexFile;->isValidCompilerFilter(Ljava/lang/String;)Z

    #@13
    move-result v1

    #@14
    if-eqz v1, :cond_1

    #@16
    .line 59
    packed-switch p0, :pswitch_data_0

    #@19
    .line 69
    :cond_0
    return-object v0

    #@1a
    .line 54
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    #@1c
    new-instance v2, Ljava/lang/StringBuilder;

    #@1e
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@21
    const-string/jumbo v3, "Value \""

    #@24
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v2

    #@28
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v2

    #@2c
    const-string/jumbo v3, "\" not valid "

    #@2f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v2

    #@33
    .line 55
    const-string/jumbo v3, "(reason "

    #@36
    .line 54
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@39
    move-result-object v2

    #@3a
    .line 55
    sget-object v3, Lcom/android/server/pm/PackageManagerServiceCompilerMapping;->REASON_STRINGS:[Ljava/lang/String;

    #@3c
    aget-object v3, v3, p0

    #@3e
    .line 54
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v2

    #@42
    .line 55
    const-string/jumbo v3, ")"

    #@45
    .line 54
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v2

    #@49
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4c
    move-result-object v2

    #@4d
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@50
    throw v1

    #@51
    .line 62
    :pswitch_0
    invoke-static {v0}, Ldalvik/system/DexFile;->isProfileGuidedCompilerFilter(Ljava/lang/String;)Z

    #@54
    move-result v1

    #@55
    if-eqz v1, :cond_0

    #@57
    .line 63
    new-instance v1, Ljava/lang/IllegalStateException;

    #@59
    new-instance v2, Ljava/lang/StringBuilder;

    #@5b
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@5e
    const-string/jumbo v3, "\""

    #@61
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@64
    move-result-object v2

    #@65
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@68
    move-result-object v2

    #@69
    const-string/jumbo v3, "\" is profile-guided, "

    #@6c
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6f
    move-result-object v2

    #@70
    .line 64
    const-string/jumbo v3, "but not allowed for "

    #@73
    .line 63
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@76
    move-result-object v2

    #@77
    .line 64
    sget-object v3, Lcom/android/server/pm/PackageManagerServiceCompilerMapping;->REASON_STRINGS:[Ljava/lang/String;

    #@79
    aget-object v3, v3, p0

    #@7b
    .line 63
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7e
    move-result-object v2

    #@7f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@82
    move-result-object v2

    #@83
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@86
    throw v1

    #@87
    .line 59
    nop

    #@88
    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static getCompilerFilterForReason(I)Ljava/lang/String;
    .locals 1
    .param p0, "reason"    # I

    #@0
    .prologue
    .line 106
    invoke-static {p0}, Lcom/android/server/pm/PackageManagerServiceCompilerMapping;->getAndCheckValidity(I)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public static getFullCompilerFilter()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 116
    const-string/jumbo v1, "dalvik.vm.dex2oat-filter"

    #@3
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    #@6
    move-result-object v0

    #@7
    .line 117
    .local v0, "value":Ljava/lang/String;
    if-eqz v0, :cond_0

    #@9
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    #@c
    move-result v1

    #@d
    if-eqz v1, :cond_1

    #@f
    .line 118
    :cond_0
    const-string/jumbo v1, "speed"

    #@12
    return-object v1

    #@13
    .line 121
    :cond_1
    invoke-static {v0}, Ldalvik/system/DexFile;->isValidCompilerFilter(Ljava/lang/String;)Z

    #@16
    move-result v1

    #@17
    if-eqz v1, :cond_2

    #@19
    .line 122
    invoke-static {v0}, Ldalvik/system/DexFile;->isProfileGuidedCompilerFilter(Ljava/lang/String;)Z

    #@1c
    move-result v1

    #@1d
    .line 121
    if-eqz v1, :cond_3

    #@1f
    .line 123
    :cond_2
    const-string/jumbo v1, "speed"

    #@22
    return-object v1

    #@23
    .line 126
    :cond_3
    return-object v0
.end method

.method public static getNonProfileGuidedCompilerFilter(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "filter"    # Ljava/lang/String;

    #@0
    .prologue
    .line 133
    invoke-static {p0}, Ldalvik/system/DexFile;->getNonProfileGuidedCompilerFilter(Ljava/lang/String;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method private static getSystemPropertyName(I)Ljava/lang/String;
    .locals 3
    .param p0, "reason"    # I

    #@0
    .prologue
    .line 41
    if-ltz p0, :cond_0

    #@2
    sget-object v0, Lcom/android/server/pm/PackageManagerServiceCompilerMapping;->REASON_STRINGS:[Ljava/lang/String;

    #@4
    array-length v0, v0

    #@5
    if-lt p0, v0, :cond_1

    #@7
    .line 42
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@9
    new-instance v1, Ljava/lang/StringBuilder;

    #@b
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@e
    const-string/jumbo v2, "reason "

    #@11
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@14
    move-result-object v1

    #@15
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@18
    move-result-object v1

    #@19
    const-string/jumbo v2, " invalid"

    #@1c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v1

    #@20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v1

    #@24
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@27
    throw v0

    #@28
    .line 45
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    #@2a
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@2d
    const-string/jumbo v1, "pm.dexopt."

    #@30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@33
    move-result-object v0

    #@34
    sget-object v1, Lcom/android/server/pm/PackageManagerServiceCompilerMapping;->REASON_STRINGS:[Ljava/lang/String;

    #@36
    aget-object v1, v1, p0

    #@38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3b
    move-result-object v0

    #@3c
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3f
    move-result-object v0

    #@40
    return-object v0
.end method
