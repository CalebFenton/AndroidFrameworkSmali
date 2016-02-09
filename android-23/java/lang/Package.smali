.class public Ljava/lang/Package;
.super Ljava/lang/Object;
.source "Package.java"

# interfaces
.implements Ljava/lang/reflect/AnnotatedElement;


# static fields
.field private static final NO_ANNOTATIONS:[Ljava/lang/annotation/Annotation;


# instance fields
.field private final classLoader:Ljava/lang/ClassLoader;

.field private final implTitle:Ljava/lang/String;

.field private final implVendor:Ljava/lang/String;

.field private final implVersion:Ljava/lang/String;

.field private final name:Ljava/lang/String;

.field private final sealBase:Ljava/net/URL;

.field private final specTitle:Ljava/lang/String;

.field private final specVendor:Ljava/lang/String;

.field private final specVersion:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 52
    const/4 v0, 0x0

    #@1
    new-array v0, v0, [Ljava/lang/annotation/Annotation;

    #@3
    sput-object v0, Ljava/lang/Package;->NO_ANNOTATIONS:[Ljava/lang/annotation/Annotation;

    #@5
    .line 51
    return-void
.end method

.method constructor <init>(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/net/URL;)V
    .locals 0
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "specTitle"    # Ljava/lang/String;
    .param p4, "specVersion"    # Ljava/lang/String;
    .param p5, "specVendor"    # Ljava/lang/String;
    .param p6, "implTitle"    # Ljava/lang/String;
    .param p7, "implVersion"    # Ljava/lang/String;
    .param p8, "implVendor"    # Ljava/lang/String;
    .param p9, "sealBase"    # Ljava/net/URL;

    #@0
    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 67
    iput-object p1, p0, Ljava/lang/Package;->classLoader:Ljava/lang/ClassLoader;

    #@5
    .line 68
    iput-object p2, p0, Ljava/lang/Package;->name:Ljava/lang/String;

    #@7
    .line 69
    iput-object p3, p0, Ljava/lang/Package;->specTitle:Ljava/lang/String;

    #@9
    .line 70
    iput-object p4, p0, Ljava/lang/Package;->specVersion:Ljava/lang/String;

    #@b
    .line 71
    iput-object p5, p0, Ljava/lang/Package;->specVendor:Ljava/lang/String;

    #@d
    .line 72
    iput-object p6, p0, Ljava/lang/Package;->implTitle:Ljava/lang/String;

    #@f
    .line 73
    iput-object p7, p0, Ljava/lang/Package;->implVersion:Ljava/lang/String;

    #@11
    .line 74
    iput-object p8, p0, Ljava/lang/Package;->implVendor:Ljava/lang/String;

    #@13
    .line 75
    iput-object p9, p0, Ljava/lang/Package;->sealBase:Ljava/net/URL;

    #@15
    .line 66
    return-void
.end method

.method public static getPackage(Ljava/lang/String;)Ljava/lang/Package;
    .locals 2
    .param p0, "packageName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 182
    invoke-static {}, Ldalvik/system/VMStack;->getCallingClassLoader()Ljava/lang/ClassLoader;

    #@3
    move-result-object v0

    #@4
    .line 183
    .local v0, "classLoader":Ljava/lang/ClassLoader;
    if-nez v0, :cond_0

    #@6
    .line 184
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    #@9
    move-result-object v0

    #@a
    .line 186
    :cond_0
    invoke-virtual {v0, p0}, Ljava/lang/ClassLoader;->getPackage(Ljava/lang/String;)Ljava/lang/Package;

    #@d
    move-result-object v1

    #@e
    return-object v1
.end method

.method public static getPackages()[Ljava/lang/Package;
    .locals 2

    #@0
    .prologue
    .line 196
    invoke-static {}, Ldalvik/system/VMStack;->getCallingClassLoader()Ljava/lang/ClassLoader;

    #@3
    move-result-object v0

    #@4
    .line 197
    .local v0, "classLoader":Ljava/lang/ClassLoader;
    if-nez v0, :cond_0

    #@6
    .line 198
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    #@9
    move-result-object v0

    #@a
    .line 200
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ClassLoader;->getPackages()[Ljava/lang/Package;

    #@d
    move-result-object v1

    #@e
    return-object v1
.end method


# virtual methods
.method public getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A::",
            "Ljava/lang/annotation/Annotation;",
            ">(",
            "Ljava/lang/Class",
            "<TA;>;)TA;"
        }
    .end annotation

    #@0
    .prologue
    .line 89
    .local p1, "annotationType":Ljava/lang/Class;, "Ljava/lang/Class<TA;>;"
    invoke-virtual {p0}, Ljava/lang/Package;->getAnnotations()[Ljava/lang/annotation/Annotation;

    #@3
    move-result-object v2

    #@4
    const/4 v1, 0x0

    #@5
    array-length v3, v2

    #@6
    :goto_0
    if-ge v1, v3, :cond_1

    #@8
    aget-object v0, v2, v1

    #@a
    .line 90
    .local v0, "annotation":Ljava/lang/annotation/Annotation;
    invoke-virtual {p1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    #@d
    move-result v4

    #@e
    if-eqz v4, :cond_0

    #@10
    .line 91
    return-object v0

    #@11
    .line 89
    :cond_0
    add-int/lit8 v1, v1, 0x1

    #@13
    goto :goto_0

    #@14
    .line 94
    .end local v0    # "annotation":Ljava/lang/annotation/Annotation;
    :cond_1
    const/4 v1, 0x0

    #@15
    return-object v1
.end method

.method public getAnnotations()[Ljava/lang/annotation/Annotation;
    .locals 5

    #@0
    .prologue
    .line 102
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    invoke-virtual {p0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    #@8
    move-result-object v3

    #@9
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    move-result-object v2

    #@d
    const-string/jumbo v3, ".package-info"

    #@10
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v2

    #@14
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@17
    move-result-object v2

    #@18
    .line 103
    iget-object v3, p0, Ljava/lang/Package;->classLoader:Ljava/lang/ClassLoader;

    #@1a
    .line 102
    const/4 v4, 0x0

    #@1b
    invoke-static {v2, v4, v3}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    #@1e
    move-result-object v0

    #@1f
    .line 104
    .local v0, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->getAnnotations()[Ljava/lang/annotation/Annotation;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    #@22
    move-result-object v2

    #@23
    return-object v2

    #@24
    .line 105
    .end local v0    # "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v1

    #@25
    .line 106
    .local v1, "ex":Ljava/lang/Exception;
    sget-object v2, Ljava/lang/Package;->NO_ANNOTATIONS:[Ljava/lang/annotation/Annotation;

    #@27
    return-object v2
.end method

.method public getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;
    .locals 1

    #@0
    .prologue
    .line 115
    invoke-virtual {p0}, Ljava/lang/Package;->getAnnotations()[Ljava/lang/annotation/Annotation;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public getImplementationTitle()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 138
    iget-object v0, p0, Ljava/lang/Package;->implTitle:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getImplementationVendor()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 149
    iget-object v0, p0, Ljava/lang/Package;->implVendor:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getImplementationVersion()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 159
    iget-object v0, p0, Ljava/lang/Package;->implVersion:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 169
    iget-object v0, p0, Ljava/lang/Package;->name:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getSpecificationTitle()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 210
    iget-object v0, p0, Ljava/lang/Package;->specTitle:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getSpecificationVendor()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 221
    iget-object v0, p0, Ljava/lang/Package;->specVendor:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getSpecificationVersion()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 232
    iget-object v0, p0, Ljava/lang/Package;->specVersion:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 237
    iget-object v0, p0, Ljava/lang/Package;->name:Ljava/lang/String;

    #@2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    #@5
    move-result v0

    #@6
    return v0
.end method

.method public isAnnotationPresent(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Ljava/lang/annotation/Annotation;",
            ">;)Z"
        }
    .end annotation

    #@0
    .prologue
    .line 128
    .local p1, "annotationType":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/annotation/Annotation;>;"
    invoke-virtual {p0, p1}, Ljava/lang/Package;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    #@3
    move-result-object v0

    #@4
    if-eqz v0, :cond_0

    #@6
    const/4 v0, 0x1

    #@7
    :goto_0
    return v0

    #@8
    :cond_0
    const/4 v0, 0x0

    #@9
    goto :goto_0
.end method

.method public isCompatibleWith(Ljava/lang/String;)Z
    .locals 9
    .param p1, "version"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v8, 0x1

    #@1
    const/4 v7, 0x0

    #@2
    .line 254
    const-string/jumbo v5, "\\."

    #@5
    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@8
    move-result-object v4

    #@9
    .line 255
    .local v4, "requested":[Ljava/lang/String;
    iget-object v5, p0, Ljava/lang/Package;->specVersion:Ljava/lang/String;

    #@b
    const-string/jumbo v6, "\\."

    #@e
    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    #@11
    move-result-object v2

    #@12
    .line 257
    .local v2, "provided":[Ljava/lang/String;
    const/4 v0, 0x0

    #@13
    .local v0, "i":I
    :goto_0
    array-length v5, v4

    #@14
    array-length v6, v2

    #@15
    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    #@18
    move-result v5

    #@19
    if-ge v0, v5, :cond_2

    #@1b
    .line 258
    aget-object v5, v4, v0

    #@1d
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@20
    move-result v3

    #@21
    .line 259
    .local v3, "reqNum":I
    aget-object v5, v2, v0

    #@23
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    #@26
    move-result v1

    #@27
    .line 261
    .local v1, "provNum":I
    if-le v3, v1, :cond_0

    #@29
    .line 262
    return v7

    #@2a
    .line 263
    :cond_0
    if-ge v3, v1, :cond_1

    #@2c
    .line 264
    return v8

    #@2d
    .line 257
    :cond_1
    add-int/lit8 v0, v0, 0x1

    #@2f
    goto :goto_0

    #@30
    .line 268
    .end local v1    # "provNum":I
    .end local v3    # "reqNum":I
    :cond_2
    array-length v5, v4

    #@31
    array-length v6, v2

    #@32
    if-le v5, v6, :cond_3

    #@34
    .line 269
    return v7

    #@35
    .line 272
    :cond_3
    return v8
.end method

.method public isSealed()Z
    .locals 1

    #@0
    .prologue
    .line 281
    iget-object v0, p0, Ljava/lang/Package;->sealBase:Ljava/net/URL;

    #@2
    if-eqz v0, :cond_0

    #@4
    const/4 v0, 0x1

    #@5
    :goto_0
    return v0

    #@6
    :cond_0
    const/4 v0, 0x0

    #@7
    goto :goto_0
.end method

.method public isSealed(Ljava/net/URL;)Z
    .locals 1
    .param p1, "url"    # Ljava/net/URL;

    #@0
    .prologue
    .line 294
    iget-object v0, p0, Ljava/lang/Package;->sealBase:Ljava/net/URL;

    #@2
    if-eqz v0, :cond_0

    #@4
    iget-object v0, p0, Ljava/lang/Package;->sealBase:Ljava/net/URL;

    #@6
    invoke-virtual {v0, p1}, Ljava/net/URL;->sameFile(Ljava/net/URL;)Z

    #@9
    move-result v0

    #@a
    :goto_0
    return v0

    #@b
    :cond_0
    const/4 v0, 0x0

    #@c
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    #@0
    .prologue
    .line 299
    new-instance v0, Ljava/lang/StringBuilder;

    #@2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@5
    const-string/jumbo v1, "package "

    #@8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b
    move-result-object v0

    #@c
    iget-object v1, p0, Ljava/lang/Package;->name:Ljava/lang/String;

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v0

    #@12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@15
    move-result-object v0

    #@16
    return-object v0
.end method
