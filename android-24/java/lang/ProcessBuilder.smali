.class public final Ljava/lang/ProcessBuilder;
.super Ljava/lang/Object;
.source "ProcessBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/lang/ProcessBuilder$NullInputStream;,
        Ljava/lang/ProcessBuilder$NullOutputStream;,
        Ljava/lang/ProcessBuilder$Redirect;
    }
.end annotation


# static fields
.field static final synthetic -assertionsDisabled:Z


# instance fields
.field private command:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private directory:Ljava/io/File;

.field private environment:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private redirectErrorStream:Z

.field private redirects:[Ljava/lang/ProcessBuilder$Redirect;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    const-class v0, Ljava/lang/ProcessBuilder;

    #@2
    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    #@5
    move-result v0

    #@6
    if-eqz v0, :cond_0

    #@8
    const/4 v0, 0x0

    #@9
    :goto_0
    sput-boolean v0, Ljava/lang/ProcessBuilder;->-assertionsDisabled:Z

    #@b
    .line 113
    return-void

    #@c
    :cond_0
    const/4 v0, 0x1

    #@d
    goto :goto_0
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    #@0
    .prologue
    .line 133
    .local p1, "command":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 134
    if-nez p1, :cond_0

    #@5
    .line 135
    new-instance v0, Ljava/lang/NullPointerException;

    #@7
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@a
    throw v0

    #@b
    .line 136
    :cond_0
    iput-object p1, p0, Ljava/lang/ProcessBuilder;->command:Ljava/util/List;

    #@d
    .line 133
    return-void
.end method

.method public varargs constructor <init>([Ljava/lang/String;)V
    .locals 4
    .param p1, "command"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 151
    new-instance v1, Ljava/util/ArrayList;

    #@5
    array-length v2, p1

    #@6
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    #@9
    iput-object v1, p0, Ljava/lang/ProcessBuilder;->command:Ljava/util/List;

    #@b
    .line 152
    const/4 v1, 0x0

    #@c
    array-length v2, p1

    #@d
    :goto_0
    if-ge v1, v2, :cond_0

    #@f
    aget-object v0, p1, v1

    #@11
    .line 153
    .local v0, "arg":Ljava/lang/String;
    iget-object v3, p0, Ljava/lang/ProcessBuilder;->command:Ljava/util/List;

    #@13
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@16
    .line 152
    add-int/lit8 v1, v1, 0x1

    #@18
    goto :goto_0

    #@19
    .line 150
    .end local v0    # "arg":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method private redirects()[Ljava/lang/ProcessBuilder$Redirect;
    .locals 3

    #@0
    .prologue
    .line 604
    iget-object v0, p0, Ljava/lang/ProcessBuilder;->redirects:[Ljava/lang/ProcessBuilder$Redirect;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 605
    const/4 v0, 0x3

    #@5
    new-array v0, v0, [Ljava/lang/ProcessBuilder$Redirect;

    #@7
    .line 606
    sget-object v1, Ljava/lang/ProcessBuilder$Redirect;->PIPE:Ljava/lang/ProcessBuilder$Redirect;

    #@9
    const/4 v2, 0x0

    #@a
    aput-object v1, v0, v2

    #@c
    sget-object v1, Ljava/lang/ProcessBuilder$Redirect;->PIPE:Ljava/lang/ProcessBuilder$Redirect;

    #@e
    const/4 v2, 0x1

    #@f
    aput-object v1, v0, v2

    #@11
    sget-object v1, Ljava/lang/ProcessBuilder$Redirect;->PIPE:Ljava/lang/ProcessBuilder$Redirect;

    #@13
    const/4 v2, 0x2

    #@14
    aput-object v1, v0, v2

    #@16
    .line 605
    iput-object v0, p0, Ljava/lang/ProcessBuilder;->redirects:[Ljava/lang/ProcessBuilder$Redirect;

    #@18
    .line 608
    :cond_0
    iget-object v0, p0, Ljava/lang/ProcessBuilder;->redirects:[Ljava/lang/ProcessBuilder$Redirect;

    #@1a
    return-object v0
.end method


# virtual methods
.method public command(Ljava/util/List;)Ljava/lang/ProcessBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/ProcessBuilder;"
        }
    .end annotation

    #@0
    .prologue
    .line 170
    .local p1, "command":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez p1, :cond_0

    #@2
    .line 171
    new-instance v0, Ljava/lang/NullPointerException;

    #@4
    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    #@7
    throw v0

    #@8
    .line 172
    :cond_0
    iput-object p1, p0, Ljava/lang/ProcessBuilder;->command:Ljava/util/List;

    #@a
    .line 173
    return-object p0
.end method

.method public varargs command([Ljava/lang/String;)Ljava/lang/ProcessBuilder;
    .locals 4
    .param p1, "command"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 188
    new-instance v1, Ljava/util/ArrayList;

    #@2
    array-length v2, p1

    #@3
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    #@6
    iput-object v1, p0, Ljava/lang/ProcessBuilder;->command:Ljava/util/List;

    #@8
    .line 189
    const/4 v1, 0x0

    #@9
    array-length v2, p1

    #@a
    :goto_0
    if-ge v1, v2, :cond_0

    #@c
    aget-object v0, p1, v1

    #@e
    .line 190
    .local v0, "arg":Ljava/lang/String;
    iget-object v3, p0, Ljava/lang/ProcessBuilder;->command:Ljava/util/List;

    #@10
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@13
    .line 189
    add-int/lit8 v1, v1, 0x1

    #@15
    goto :goto_0

    #@16
    .line 191
    .end local v0    # "arg":Ljava/lang/String;
    :cond_0
    return-object p0
.end method

.method public command()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 203
    iget-object v0, p0, Ljava/lang/ProcessBuilder;->command:Ljava/util/List;

    #@2
    return-object v0
.end method

.method public directory()Ljava/io/File;
    .locals 1

    #@0
    .prologue
    .line 328
    iget-object v0, p0, Ljava/lang/ProcessBuilder;->directory:Ljava/io/File;

    #@2
    return-object v0
.end method

.method public directory(Ljava/io/File;)Ljava/lang/ProcessBuilder;
    .locals 0
    .param p1, "directory"    # Ljava/io/File;

    #@0
    .prologue
    .line 345
    iput-object p1, p0, Ljava/lang/ProcessBuilder;->directory:Ljava/io/File;

    #@2
    .line 346
    return-object p0
.end method

.method environment([Ljava/lang/String;)Ljava/lang/ProcessBuilder;
    .locals 9
    .param p1, "envp"    # [Ljava/lang/String;

    #@0
    .prologue
    const/4 v2, 0x1

    #@1
    const/4 v8, -0x1

    #@2
    const/4 v3, 0x0

    #@3
    .line 289
    sget-boolean v4, Ljava/lang/ProcessBuilder;->-assertionsDisabled:Z

    #@5
    if-nez v4, :cond_1

    #@7
    iget-object v4, p0, Ljava/lang/ProcessBuilder;->environment:Ljava/util/Map;

    #@9
    if-nez v4, :cond_0

    #@b
    move v4, v2

    #@c
    :goto_0
    if-nez v4, :cond_1

    #@e
    new-instance v2, Ljava/lang/AssertionError;

    #@10
    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    #@13
    throw v2

    #@14
    :cond_0
    move v4, v3

    #@15
    goto :goto_0

    #@16
    .line 290
    :cond_1
    if-eqz p1, :cond_6

    #@18
    .line 291
    array-length v4, p1

    #@19
    invoke-static {v4}, Ljava/lang/ProcessEnvironment;->emptyEnvironment(I)Ljava/util/Map;

    #@1c
    move-result-object v4

    #@1d
    iput-object v4, p0, Ljava/lang/ProcessBuilder;->environment:Ljava/util/Map;

    #@1f
    .line 292
    sget-boolean v4, Ljava/lang/ProcessBuilder;->-assertionsDisabled:Z

    #@21
    if-nez v4, :cond_3

    #@23
    iget-object v4, p0, Ljava/lang/ProcessBuilder;->environment:Ljava/util/Map;

    #@25
    if-eqz v4, :cond_2

    #@27
    :goto_1
    if-nez v2, :cond_3

    #@29
    new-instance v2, Ljava/lang/AssertionError;

    #@2b
    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    #@2e
    throw v2

    #@2f
    :cond_2
    move v2, v3

    #@30
    goto :goto_1

    #@31
    .line 294
    :cond_3
    array-length v4, p1

    #@32
    move v2, v3

    #@33
    :goto_2
    if-ge v2, v4, :cond_6

    #@35
    aget-object v0, p1, v2

    #@37
    .line 301
    .local v0, "envstring":Ljava/lang/String;
    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(I)I

    #@3a
    move-result v5

    #@3b
    if-eq v5, v8, :cond_4

    #@3d
    .line 302
    const-string/jumbo v5, "\u0000.*"

    #@40
    const-string/jumbo v6, ""

    #@43
    invoke-virtual {v0, v5, v6}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    #@46
    move-result-object v0

    #@47
    .line 305
    :cond_4
    const/16 v5, 0x3d

    #@49
    invoke-virtual {v0, v5, v3}, Ljava/lang/String;->indexOf(II)I

    #@4c
    move-result v1

    #@4d
    .line 307
    .local v1, "eqlsign":I
    if-eq v1, v8, :cond_5

    #@4f
    .line 308
    iget-object v5, p0, Ljava/lang/ProcessBuilder;->environment:Ljava/util/Map;

    #@51
    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    #@54
    move-result-object v6

    #@55
    .line 309
    add-int/lit8 v7, v1, 0x1

    #@57
    invoke-virtual {v0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    #@5a
    move-result-object v7

    #@5b
    .line 308
    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@5e
    .line 294
    :cond_5
    add-int/lit8 v2, v2, 0x1

    #@60
    goto :goto_2

    #@61
    .line 312
    .end local v0    # "envstring":Ljava/lang/String;
    .end local v1    # "eqlsign":I
    :cond_6
    return-object p0
.end method

.method public environment()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    .line 275
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    #@3
    move-result-object v0

    #@4
    .line 276
    .local v0, "security":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_0

    #@6
    .line 277
    new-instance v1, Ljava/lang/RuntimePermission;

    #@8
    const-string/jumbo v2, "getenv.*"

    #@b
    invoke-direct {v1, v2}, Ljava/lang/RuntimePermission;-><init>(Ljava/lang/String;)V

    #@e
    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    #@11
    .line 279
    :cond_0
    iget-object v1, p0, Ljava/lang/ProcessBuilder;->environment:Ljava/util/Map;

    #@13
    if-nez v1, :cond_1

    #@15
    .line 280
    invoke-static {}, Ljava/lang/ProcessEnvironment;->environment()Ljava/util/Map;

    #@18
    move-result-object v1

    #@19
    iput-object v1, p0, Ljava/lang/ProcessBuilder;->environment:Ljava/util/Map;

    #@1b
    .line 282
    :cond_1
    sget-boolean v1, Ljava/lang/ProcessBuilder;->-assertionsDisabled:Z

    #@1d
    if-nez v1, :cond_3

    #@1f
    iget-object v1, p0, Ljava/lang/ProcessBuilder;->environment:Ljava/util/Map;

    #@21
    if-eqz v1, :cond_2

    #@23
    const/4 v1, 0x1

    #@24
    :goto_0
    if-nez v1, :cond_3

    #@26
    new-instance v1, Ljava/lang/AssertionError;

    #@28
    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    #@2b
    throw v1

    #@2c
    :cond_2
    const/4 v1, 0x0

    #@2d
    goto :goto_0

    #@2e
    .line 284
    :cond_3
    iget-object v1, p0, Ljava/lang/ProcessBuilder;->environment:Ljava/util/Map;

    #@30
    return-object v1
.end method

.method public inheritIO()Ljava/lang/ProcessBuilder;
    .locals 2

    #@0
    .prologue
    .line 843
    invoke-direct {p0}, Ljava/lang/ProcessBuilder;->redirects()[Ljava/lang/ProcessBuilder$Redirect;

    #@3
    move-result-object v0

    #@4
    sget-object v1, Ljava/lang/ProcessBuilder$Redirect;->INHERIT:Ljava/lang/ProcessBuilder$Redirect;

    #@6
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    #@9
    .line 844
    return-object p0
.end method

.method public redirectError()Ljava/lang/ProcessBuilder$Redirect;
    .locals 2

    #@0
    .prologue
    .line 815
    iget-object v0, p0, Ljava/lang/ProcessBuilder;->redirects:[Ljava/lang/ProcessBuilder$Redirect;

    #@2
    if-nez v0, :cond_0

    #@4
    sget-object v0, Ljava/lang/ProcessBuilder$Redirect;->PIPE:Ljava/lang/ProcessBuilder$Redirect;

    #@6
    :goto_0
    return-object v0

    #@7
    :cond_0
    iget-object v0, p0, Ljava/lang/ProcessBuilder;->redirects:[Ljava/lang/ProcessBuilder$Redirect;

    #@9
    const/4 v1, 0x2

    #@a
    aget-object v0, v0, v1

    #@c
    goto :goto_0
.end method

.method public redirectError(Ljava/io/File;)Ljava/lang/ProcessBuilder;
    .locals 1
    .param p1, "file"    # Ljava/io/File;

    #@0
    .prologue
    .line 767
    invoke-static {p1}, Ljava/lang/ProcessBuilder$Redirect;->to(Ljava/io/File;)Ljava/lang/ProcessBuilder$Redirect;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Ljava/lang/ProcessBuilder;->redirectError(Ljava/lang/ProcessBuilder$Redirect;)Ljava/lang/ProcessBuilder;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public redirectError(Ljava/lang/ProcessBuilder$Redirect;)Ljava/lang/ProcessBuilder;
    .locals 3
    .param p1, "destination"    # Ljava/lang/ProcessBuilder$Redirect;

    #@0
    .prologue
    .line 706
    invoke-virtual {p1}, Ljava/lang/ProcessBuilder$Redirect;->type()Ljava/lang/ProcessBuilder$Redirect$Type;

    #@3
    move-result-object v0

    #@4
    sget-object v1, Ljava/lang/ProcessBuilder$Redirect$Type;->READ:Ljava/lang/ProcessBuilder$Redirect$Type;

    #@6
    if-ne v0, v1, :cond_0

    #@8
    .line 707
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@a
    .line 708
    new-instance v1, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v2, "Redirect invalid for writing: "

    #@12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v1

    #@1e
    .line 707
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@21
    throw v0

    #@22
    .line 709
    :cond_0
    invoke-direct {p0}, Ljava/lang/ProcessBuilder;->redirects()[Ljava/lang/ProcessBuilder$Redirect;

    #@25
    move-result-object v0

    #@26
    const/4 v1, 0x2

    #@27
    aput-object p1, v0, v1

    #@29
    .line 710
    return-object p0
.end method

.method public redirectErrorStream(Z)Ljava/lang/ProcessBuilder;
    .locals 0
    .param p1, "redirectErrorStream"    # Z

    #@0
    .prologue
    .line 880
    iput-boolean p1, p0, Ljava/lang/ProcessBuilder;->redirectErrorStream:Z

    #@2
    .line 881
    return-object p0
.end method

.method public redirectErrorStream()Z
    .locals 1

    #@0
    .prologue
    .line 862
    iget-boolean v0, p0, Ljava/lang/ProcessBuilder;->redirectErrorStream:Z

    #@2
    return v0
.end method

.method public redirectInput()Ljava/lang/ProcessBuilder$Redirect;
    .locals 2

    #@0
    .prologue
    .line 783
    iget-object v0, p0, Ljava/lang/ProcessBuilder;->redirects:[Ljava/lang/ProcessBuilder$Redirect;

    #@2
    if-nez v0, :cond_0

    #@4
    sget-object v0, Ljava/lang/ProcessBuilder$Redirect;->PIPE:Ljava/lang/ProcessBuilder$Redirect;

    #@6
    :goto_0
    return-object v0

    #@7
    :cond_0
    iget-object v0, p0, Ljava/lang/ProcessBuilder;->redirects:[Ljava/lang/ProcessBuilder$Redirect;

    #@9
    const/4 v1, 0x0

    #@a
    aget-object v0, v0, v1

    #@c
    goto :goto_0
.end method

.method public redirectInput(Ljava/io/File;)Ljava/lang/ProcessBuilder;
    .locals 1
    .param p1, "file"    # Ljava/io/File;

    #@0
    .prologue
    .line 729
    invoke-static {p1}, Ljava/lang/ProcessBuilder$Redirect;->from(Ljava/io/File;)Ljava/lang/ProcessBuilder$Redirect;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Ljava/lang/ProcessBuilder;->redirectInput(Ljava/lang/ProcessBuilder$Redirect;)Ljava/lang/ProcessBuilder;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public redirectInput(Ljava/lang/ProcessBuilder$Redirect;)Ljava/lang/ProcessBuilder;
    .locals 3
    .param p1, "source"    # Ljava/lang/ProcessBuilder$Redirect;

    #@0
    .prologue
    .line 637
    invoke-virtual {p1}, Ljava/lang/ProcessBuilder$Redirect;->type()Ljava/lang/ProcessBuilder$Redirect$Type;

    #@3
    move-result-object v0

    #@4
    sget-object v1, Ljava/lang/ProcessBuilder$Redirect$Type;->WRITE:Ljava/lang/ProcessBuilder$Redirect$Type;

    #@6
    if-eq v0, v1, :cond_0

    #@8
    .line 638
    invoke-virtual {p1}, Ljava/lang/ProcessBuilder$Redirect;->type()Ljava/lang/ProcessBuilder$Redirect$Type;

    #@b
    move-result-object v0

    #@c
    sget-object v1, Ljava/lang/ProcessBuilder$Redirect$Type;->APPEND:Ljava/lang/ProcessBuilder$Redirect$Type;

    #@e
    if-ne v0, v1, :cond_1

    #@10
    .line 639
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@12
    .line 640
    new-instance v1, Ljava/lang/StringBuilder;

    #@14
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@17
    const-string/jumbo v2, "Redirect invalid for reading: "

    #@1a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1d
    move-result-object v1

    #@1e
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v1

    #@22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25
    move-result-object v1

    #@26
    .line 639
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@29
    throw v0

    #@2a
    .line 641
    :cond_1
    invoke-direct {p0}, Ljava/lang/ProcessBuilder;->redirects()[Ljava/lang/ProcessBuilder$Redirect;

    #@2d
    move-result-object v0

    #@2e
    const/4 v1, 0x0

    #@2f
    aput-object p1, v0, v1

    #@31
    .line 642
    return-object p0
.end method

.method public redirectOutput()Ljava/lang/ProcessBuilder$Redirect;
    .locals 2

    #@0
    .prologue
    .line 799
    iget-object v0, p0, Ljava/lang/ProcessBuilder;->redirects:[Ljava/lang/ProcessBuilder$Redirect;

    #@2
    if-nez v0, :cond_0

    #@4
    sget-object v0, Ljava/lang/ProcessBuilder$Redirect;->PIPE:Ljava/lang/ProcessBuilder$Redirect;

    #@6
    :goto_0
    return-object v0

    #@7
    :cond_0
    iget-object v0, p0, Ljava/lang/ProcessBuilder;->redirects:[Ljava/lang/ProcessBuilder$Redirect;

    #@9
    const/4 v1, 0x1

    #@a
    aget-object v0, v0, v1

    #@c
    goto :goto_0
.end method

.method public redirectOutput(Ljava/io/File;)Ljava/lang/ProcessBuilder;
    .locals 1
    .param p1, "file"    # Ljava/io/File;

    #@0
    .prologue
    .line 748
    invoke-static {p1}, Ljava/lang/ProcessBuilder$Redirect;->to(Ljava/io/File;)Ljava/lang/ProcessBuilder$Redirect;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {p0, v0}, Ljava/lang/ProcessBuilder;->redirectOutput(Ljava/lang/ProcessBuilder$Redirect;)Ljava/lang/ProcessBuilder;

    #@7
    move-result-object v0

    #@8
    return-object v0
.end method

.method public redirectOutput(Ljava/lang/ProcessBuilder$Redirect;)Ljava/lang/ProcessBuilder;
    .locals 3
    .param p1, "destination"    # Ljava/lang/ProcessBuilder$Redirect;

    #@0
    .prologue
    .line 670
    invoke-virtual {p1}, Ljava/lang/ProcessBuilder$Redirect;->type()Ljava/lang/ProcessBuilder$Redirect$Type;

    #@3
    move-result-object v0

    #@4
    sget-object v1, Ljava/lang/ProcessBuilder$Redirect$Type;->READ:Ljava/lang/ProcessBuilder$Redirect$Type;

    #@6
    if-ne v0, v1, :cond_0

    #@8
    .line 671
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@a
    .line 672
    new-instance v1, Ljava/lang/StringBuilder;

    #@c
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@f
    const-string/jumbo v2, "Redirect invalid for writing: "

    #@12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@15
    move-result-object v1

    #@16
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1d
    move-result-object v1

    #@1e
    .line 671
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@21
    throw v0

    #@22
    .line 673
    :cond_0
    invoke-direct {p0}, Ljava/lang/ProcessBuilder;->redirects()[Ljava/lang/ProcessBuilder$Redirect;

    #@25
    move-result-object v0

    #@26
    const/4 v1, 0x1

    #@27
    aput-object p1, v0, v1

    #@29
    .line 674
    return-object p0
.end method

.method public start()Ljava/lang/Process;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v10, 0x0

    #@1
    .line 947
    iget-object v9, p0, Ljava/lang/ProcessBuilder;->command:Ljava/util/List;

    #@3
    iget-object v11, p0, Ljava/lang/ProcessBuilder;->command:Ljava/util/List;

    #@5
    invoke-interface {v11}, Ljava/util/List;->size()I

    #@8
    move-result v11

    #@9
    new-array v11, v11, [Ljava/lang/String;

    #@b
    invoke-interface {v9, v11}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    #@e
    move-result-object v3

    #@f
    check-cast v3, [Ljava/lang/String;

    #@11
    .line 948
    .local v3, "cmdarray":[Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    #@14
    move-result-object v3

    #@15
    .end local v3    # "cmdarray":[Ljava/lang/String;
    check-cast v3, [Ljava/lang/String;

    #@17
    .line 950
    .restart local v3    # "cmdarray":[Ljava/lang/String;
    array-length v11, v3

    #@18
    move v9, v10

    #@19
    :goto_0
    if-ge v9, v11, :cond_1

    #@1b
    aget-object v1, v3, v9

    #@1d
    .line 951
    .local v1, "arg":Ljava/lang/String;
    if-nez v1, :cond_0

    #@1f
    .line 952
    new-instance v9, Ljava/lang/NullPointerException;

    #@21
    invoke-direct {v9}, Ljava/lang/NullPointerException;-><init>()V

    #@24
    throw v9

    #@25
    .line 950
    :cond_0
    add-int/lit8 v9, v9, 0x1

    #@27
    goto :goto_0

    #@28
    .line 954
    .end local v1    # "arg":Ljava/lang/String;
    :cond_1
    aget-object v7, v3, v10

    #@2a
    .line 956
    .local v7, "prog":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    #@2d
    move-result-object v8

    #@2e
    .line 957
    .local v8, "security":Ljava/lang/SecurityManager;
    if-eqz v8, :cond_2

    #@30
    .line 958
    invoke-virtual {v8, v7}, Ljava/lang/SecurityManager;->checkExec(Ljava/lang/String;)V

    #@33
    .line 961
    :cond_2
    iget-object v9, p0, Ljava/lang/ProcessBuilder;->directory:Ljava/io/File;

    #@35
    if-nez v9, :cond_3

    #@37
    const/4 v4, 0x0

    #@38
    .line 965
    :goto_1
    :try_start_0
    iget-object v9, p0, Ljava/lang/ProcessBuilder;->environment:Ljava/util/Map;

    #@3a
    .line 967
    iget-object v10, p0, Ljava/lang/ProcessBuilder;->redirects:[Ljava/lang/ProcessBuilder$Redirect;

    #@3c
    .line 968
    iget-boolean v11, p0, Ljava/lang/ProcessBuilder;->redirectErrorStream:Z

    #@3e
    .line 964
    invoke-static {v3, v9, v4, v10, v11}, Ljava/lang/ProcessImpl;->start([Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;[Ljava/lang/ProcessBuilder$Redirect;Z)Ljava/lang/Process;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    #@41
    move-result-object v9

    #@42
    return-object v9

    #@43
    .line 961
    :cond_3
    iget-object v9, p0, Ljava/lang/ProcessBuilder;->directory:Ljava/io/File;

    #@45
    invoke-virtual {v9}, Ljava/io/File;->toString()Ljava/lang/String;

    #@48
    move-result-object v4

    #@49
    .local v4, "dir":Ljava/lang/String;
    goto :goto_1

    #@4a
    .line 969
    .end local v4    # "dir":Ljava/lang/String;
    :catch_0
    move-exception v5

    #@4b
    .line 970
    .local v5, "e":Ljava/lang/Exception;
    new-instance v9, Ljava/lang/StringBuilder;

    #@4d
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@50
    const-string/jumbo v10, ": "

    #@53
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@56
    move-result-object v9

    #@57
    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    #@5a
    move-result-object v10

    #@5b
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5e
    move-result-object v9

    #@5f
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@62
    move-result-object v6

    #@63
    .line 971
    .local v6, "exceptionInfo":Ljava/lang/String;
    move-object v2, v5

    #@64
    .line 972
    .local v2, "cause":Ljava/lang/Throwable;
    instance-of v9, v5, Ljava/io/IOException;

    #@66
    if-eqz v9, :cond_4

    #@68
    if-eqz v8, :cond_4

    #@6a
    .line 975
    :try_start_1
    invoke-virtual {v8, v7}, Ljava/lang/SecurityManager;->checkRead(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/security/AccessControlException; {:try_start_1 .. :try_end_1} :catch_1

    #@6d
    .line 983
    :cond_4
    :goto_2
    new-instance v10, Ljava/io/IOException;

    #@6f
    .line 984
    new-instance v9, Ljava/lang/StringBuilder;

    #@71
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@74
    const-string/jumbo v11, "Cannot run program \""

    #@77
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7a
    move-result-object v9

    #@7b
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7e
    move-result-object v9

    #@7f
    const-string/jumbo v11, "\""

    #@82
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@85
    move-result-object v11

    #@86
    .line 985
    if-nez v4, :cond_5

    #@88
    const-string/jumbo v9, ""

    #@8b
    .line 984
    :goto_3
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8e
    move-result-object v9

    #@8f
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@92
    move-result-object v9

    #@93
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@96
    move-result-object v9

    #@97
    .line 983
    invoke-direct {v10, v9, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@9a
    throw v10

    #@9b
    .line 976
    :catch_1
    move-exception v0

    #@9c
    .line 977
    .local v0, "ace":Ljava/security/AccessControlException;
    const-string/jumbo v6, ""

    #@9f
    .line 978
    move-object v2, v0

    #@a0
    goto :goto_2

    #@a1
    .line 985
    .end local v0    # "ace":Ljava/security/AccessControlException;
    :cond_5
    new-instance v9, Ljava/lang/StringBuilder;

    #@a3
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    #@a6
    const-string/jumbo v12, " (in directory \""

    #@a9
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ac
    move-result-object v9

    #@ad
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b0
    move-result-object v9

    #@b1
    const-string/jumbo v12, "\")"

    #@b4
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b7
    move-result-object v9

    #@b8
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@bb
    move-result-object v9

    #@bc
    goto :goto_3
.end method
