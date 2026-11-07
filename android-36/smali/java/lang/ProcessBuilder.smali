.class public final Ljava/lang/ProcessBuilder;
.super Ljava/lang/Object;
.source "ProcessBuilder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/lang/ProcessBuilder$Redirect;,
        Ljava/lang/ProcessBuilder$NullOutputStream;,
        Ljava/lang/ProcessBuilder$NullInputStream;
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z


# instance fields
.field private greylist-max-o command:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o directory:Ljava/io/File;

.field private greylist-max-o environment:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o redirectErrorStream:Z

.field private greylist-max-o redirects:[Ljava/lang/ProcessBuilder$Redirect;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 0

    .line 178
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 198
    .local p1, "command":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 199
    if-eqz p1, :cond_8

    .line 201
    iput-object p1, p0, Ljava/lang/ProcessBuilder;->command:Ljava/util/List;

    .line 202
    return-void

    .line 200
    :cond_8
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public varargs constructor whitelist test-api <init>([Ljava/lang/String;)V
    .registers 6
    .param p1, "command"    # [Ljava/lang/String;

    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 216
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Ljava/lang/ProcessBuilder;->command:Ljava/util/List;

    .line 217
    array-length v0, p1

    const/4 v1, 0x0

    :goto_d
    if-ge v1, v0, :cond_19

    aget-object v2, p1, v1

    .line 218
    .local v2, "arg":Ljava/lang/String;
    iget-object v3, p0, Ljava/lang/ProcessBuilder;->command:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 217
    .end local v2    # "arg":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 219
    :cond_19
    return-void
.end method

.method private greylist-max-o redirects()[Ljava/lang/ProcessBuilder$Redirect;
    .registers 4

    .line 670
    iget-object v0, p0, Ljava/lang/ProcessBuilder;->redirects:[Ljava/lang/ProcessBuilder$Redirect;

    if-nez v0, :cond_18

    .line 671
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/ProcessBuilder$Redirect;

    const/4 v1, 0x0

    sget-object v2, Ljava/lang/ProcessBuilder$Redirect;->PIPE:Ljava/lang/ProcessBuilder$Redirect;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Ljava/lang/ProcessBuilder$Redirect;->PIPE:Ljava/lang/ProcessBuilder$Redirect;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Ljava/lang/ProcessBuilder$Redirect;->PIPE:Ljava/lang/ProcessBuilder$Redirect;

    aput-object v2, v0, v1

    iput-object v0, p0, Ljava/lang/ProcessBuilder;->redirects:[Ljava/lang/ProcessBuilder$Redirect;

    .line 674
    :cond_18
    iget-object v0, p0, Ljava/lang/ProcessBuilder;->redirects:[Ljava/lang/ProcessBuilder$Redirect;

    return-object v0
.end method


# virtual methods
.method public whitelist test-api command(Ljava/util/List;)Ljava/lang/ProcessBuilder;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/ProcessBuilder;"
        }
    .end annotation

    .line 235
    .local p1, "command":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_5

    .line 237
    iput-object p1, p0, Ljava/lang/ProcessBuilder;->command:Ljava/util/List;

    .line 238
    return-object p0

    .line 236
    :cond_5
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method

.method public varargs whitelist test-api command([Ljava/lang/String;)Ljava/lang/ProcessBuilder;
    .registers 6
    .param p1, "command"    # [Ljava/lang/String;

    .line 253
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Ljava/lang/ProcessBuilder;->command:Ljava/util/List;

    .line 254
    array-length v0, p1

    const/4 v1, 0x0

    :goto_a
    if-ge v1, v0, :cond_16

    aget-object v2, p1, v1

    .line 255
    .local v2, "arg":Ljava/lang/String;
    iget-object v3, p0, Ljava/lang/ProcessBuilder;->command:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 254
    .end local v2    # "arg":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 256
    :cond_16
    return-object p0
.end method

.method public whitelist test-api command()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 268
    iget-object v0, p0, Ljava/lang/ProcessBuilder;->command:Ljava/util/List;

    return-object v0
.end method

.method public whitelist test-api directory()Ljava/io/File;
    .registers 2

    .line 393
    iget-object v0, p0, Ljava/lang/ProcessBuilder;->directory:Ljava/io/File;

    return-object v0
.end method

.method public whitelist test-api directory(Ljava/io/File;)Ljava/lang/ProcessBuilder;
    .registers 2
    .param p1, "directory"    # Ljava/io/File;

    .line 410
    iput-object p1, p0, Ljava/lang/ProcessBuilder;->directory:Ljava/io/File;

    .line 411
    return-object p0
.end method

.method greylist-max-o environment([Ljava/lang/String;)Ljava/lang/ProcessBuilder;
    .registers 10
    .param p1, "envp"    # [Ljava/lang/String;

    .line 354
    nop

    .line 355
    if-eqz p1, :cond_3c

    .line 356
    array-length v0, p1

    invoke-static {v0}, Ljava/lang/ProcessEnvironment;->emptyEnvironment(I)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Ljava/lang/ProcessBuilder;->environment:Ljava/util/Map;

    .line 357
    nop

    .line 359
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_e
    if-ge v2, v0, :cond_3c

    aget-object v3, p1, v2

    .line 366
    .local v3, "envstring":Ljava/lang/String;
    invoke-virtual {v3, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_21

    .line 367
    const-string v4, "\u0000.*"

    const-string v6, ""

    invoke-virtual {v3, v4, v6}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 369
    :cond_21
    nop

    .line 370
    const/16 v4, 0x3d

    invoke-virtual {v3, v4, v1}, Ljava/lang/String;->indexOf(II)I

    move-result v4

    .line 372
    .local v4, "eqlsign":I
    if-eq v4, v5, :cond_39

    .line 373
    iget-object v5, p0, Ljava/lang/ProcessBuilder;->environment:Ljava/util/Map;

    invoke-virtual {v3, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v7, v4, 0x1

    .line 374
    invoke-virtual {v3, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    .line 373
    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    .end local v3    # "envstring":Ljava/lang/String;
    .end local v4    # "eqlsign":I
    :cond_39
    add-int/lit8 v2, v2, 0x1

    goto :goto_e

    .line 377
    :cond_3c
    return-object p0
.end method

.method public whitelist test-api environment()Ljava/util/Map;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 340
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v0

    .line 341
    .local v0, "security":Ljava/lang/SecurityManager;
    if-eqz v0, :cond_10

    .line 342
    new-instance v1, Ljava/lang/RuntimePermission;

    const-string v2, "getenv.*"

    invoke-direct {v1, v2}, Ljava/lang/RuntimePermission;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V

    .line 344
    :cond_10
    iget-object v1, p0, Ljava/lang/ProcessBuilder;->environment:Ljava/util/Map;

    if-nez v1, :cond_1a

    .line 345
    invoke-static {}, Ljava/lang/ProcessEnvironment;->environment()Ljava/util/Map;

    move-result-object v1

    iput-object v1, p0, Ljava/lang/ProcessBuilder;->environment:Ljava/util/Map;

    .line 347
    :cond_1a
    nop

    .line 349
    iget-object v1, p0, Ljava/lang/ProcessBuilder;->environment:Ljava/util/Map;

    return-object v1
.end method

.method public whitelist test-api inheritIO()Ljava/lang/ProcessBuilder;
    .registers 3

    .line 889
    invoke-direct {p0}, Ljava/lang/ProcessBuilder;->redirects()[Ljava/lang/ProcessBuilder$Redirect;

    move-result-object v0

    sget-object v1, Ljava/lang/ProcessBuilder$Redirect;->INHERIT:Ljava/lang/ProcessBuilder$Redirect;

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 890
    return-object p0
.end method

.method public whitelist test-api redirectError()Ljava/lang/ProcessBuilder$Redirect;
    .registers 3

    .line 863
    iget-object v0, p0, Ljava/lang/ProcessBuilder;->redirects:[Ljava/lang/ProcessBuilder$Redirect;

    if-nez v0, :cond_7

    sget-object v0, Ljava/lang/ProcessBuilder$Redirect;->PIPE:Ljava/lang/ProcessBuilder$Redirect;

    goto :goto_c

    :cond_7
    iget-object v0, p0, Ljava/lang/ProcessBuilder;->redirects:[Ljava/lang/ProcessBuilder$Redirect;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    :goto_c
    return-object v0
.end method

.method public whitelist test-api redirectError(Ljava/io/File;)Ljava/lang/ProcessBuilder;
    .registers 3
    .param p1, "file"    # Ljava/io/File;

    .line 821
    invoke-static {p1}, Ljava/lang/ProcessBuilder$Redirect;->to(Ljava/io/File;)Ljava/lang/ProcessBuilder$Redirect;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/ProcessBuilder;->redirectError(Ljava/lang/ProcessBuilder$Redirect;)Ljava/lang/ProcessBuilder;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api redirectError(Ljava/lang/ProcessBuilder$Redirect;)Ljava/lang/ProcessBuilder;
    .registers 5
    .param p1, "destination"    # Ljava/lang/ProcessBuilder$Redirect;

    .line 766
    invoke-virtual {p1}, Ljava/lang/ProcessBuilder$Redirect;->type()Ljava/lang/ProcessBuilder$Redirect$Type;

    move-result-object v0

    sget-object v1, Ljava/lang/ProcessBuilder$Redirect$Type;->READ:Ljava/lang/ProcessBuilder$Redirect$Type;

    if-eq v0, v1, :cond_10

    .line 769
    invoke-direct {p0}, Ljava/lang/ProcessBuilder;->redirects()[Ljava/lang/ProcessBuilder$Redirect;

    move-result-object v0

    const/4 v1, 0x2

    aput-object p1, v0, v1

    .line 770
    return-object p0

    .line 767
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Redirect invalid for writing: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api redirectErrorStream(Z)Ljava/lang/ProcessBuilder;
    .registers 2
    .param p1, "redirectErrorStream"    # Z

    .line 926
    iput-boolean p1, p0, Ljava/lang/ProcessBuilder;->redirectErrorStream:Z

    .line 927
    return-object p0
.end method

.method public whitelist test-api redirectErrorStream()Z
    .registers 2

    .line 908
    iget-boolean v0, p0, Ljava/lang/ProcessBuilder;->redirectErrorStream:Z

    return v0
.end method

.method public whitelist test-api redirectInput()Ljava/lang/ProcessBuilder$Redirect;
    .registers 3

    .line 835
    iget-object v0, p0, Ljava/lang/ProcessBuilder;->redirects:[Ljava/lang/ProcessBuilder$Redirect;

    if-nez v0, :cond_7

    sget-object v0, Ljava/lang/ProcessBuilder$Redirect;->PIPE:Ljava/lang/ProcessBuilder$Redirect;

    goto :goto_c

    :cond_7
    iget-object v0, p0, Ljava/lang/ProcessBuilder;->redirects:[Ljava/lang/ProcessBuilder$Redirect;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    :goto_c
    return-object v0
.end method

.method public whitelist test-api redirectInput(Ljava/io/File;)Ljava/lang/ProcessBuilder;
    .registers 3
    .param p1, "file"    # Ljava/io/File;

    .line 787
    invoke-static {p1}, Ljava/lang/ProcessBuilder$Redirect;->from(Ljava/io/File;)Ljava/lang/ProcessBuilder$Redirect;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/ProcessBuilder;->redirectInput(Ljava/lang/ProcessBuilder$Redirect;)Ljava/lang/ProcessBuilder;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api redirectInput(Ljava/lang/ProcessBuilder$Redirect;)Ljava/lang/ProcessBuilder;
    .registers 5
    .param p1, "source"    # Ljava/lang/ProcessBuilder$Redirect;

    .line 701
    invoke-virtual {p1}, Ljava/lang/ProcessBuilder$Redirect;->type()Ljava/lang/ProcessBuilder$Redirect$Type;

    move-result-object v0

    sget-object v1, Ljava/lang/ProcessBuilder$Redirect$Type;->WRITE:Ljava/lang/ProcessBuilder$Redirect$Type;

    if-eq v0, v1, :cond_18

    .line 702
    invoke-virtual {p1}, Ljava/lang/ProcessBuilder$Redirect;->type()Ljava/lang/ProcessBuilder$Redirect$Type;

    move-result-object v0

    sget-object v1, Ljava/lang/ProcessBuilder$Redirect$Type;->APPEND:Ljava/lang/ProcessBuilder$Redirect$Type;

    if-eq v0, v1, :cond_18

    .line 705
    invoke-direct {p0}, Ljava/lang/ProcessBuilder;->redirects()[Ljava/lang/ProcessBuilder$Redirect;

    move-result-object v0

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 706
    return-object p0

    .line 703
    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Redirect invalid for reading: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api redirectOutput()Ljava/lang/ProcessBuilder$Redirect;
    .registers 3

    .line 849
    iget-object v0, p0, Ljava/lang/ProcessBuilder;->redirects:[Ljava/lang/ProcessBuilder$Redirect;

    if-nez v0, :cond_7

    sget-object v0, Ljava/lang/ProcessBuilder$Redirect;->PIPE:Ljava/lang/ProcessBuilder$Redirect;

    goto :goto_c

    :cond_7
    iget-object v0, p0, Ljava/lang/ProcessBuilder;->redirects:[Ljava/lang/ProcessBuilder$Redirect;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    :goto_c
    return-object v0
.end method

.method public whitelist test-api redirectOutput(Ljava/io/File;)Ljava/lang/ProcessBuilder;
    .registers 3
    .param p1, "file"    # Ljava/io/File;

    .line 804
    invoke-static {p1}, Ljava/lang/ProcessBuilder$Redirect;->to(Ljava/io/File;)Ljava/lang/ProcessBuilder$Redirect;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/ProcessBuilder;->redirectOutput(Ljava/lang/ProcessBuilder$Redirect;)Ljava/lang/ProcessBuilder;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api redirectOutput(Ljava/lang/ProcessBuilder$Redirect;)Ljava/lang/ProcessBuilder;
    .registers 5
    .param p1, "destination"    # Ljava/lang/ProcessBuilder$Redirect;

    .line 732
    invoke-virtual {p1}, Ljava/lang/ProcessBuilder$Redirect;->type()Ljava/lang/ProcessBuilder$Redirect$Type;

    move-result-object v0

    sget-object v1, Ljava/lang/ProcessBuilder$Redirect$Type;->READ:Ljava/lang/ProcessBuilder$Redirect$Type;

    if-eq v0, v1, :cond_10

    .line 735
    invoke-direct {p0}, Ljava/lang/ProcessBuilder;->redirects()[Ljava/lang/ProcessBuilder$Redirect;

    move-result-object v0

    const/4 v1, 0x1

    aput-object p1, v0, v1

    .line 736
    return-object p0

    .line 733
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Redirect invalid for writing: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api start()Ljava/lang/Process;
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1007
    iget-object v0, p0, Ljava/lang/ProcessBuilder;->command:Ljava/util/List;

    iget-object v1, p0, Ljava/lang/ProcessBuilder;->command:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 1008
    .local v0, "cmdarray":[Ljava/lang/String;
    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, [Ljava/lang/String;

    .line 1010
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_1a
    if-ge v3, v1, :cond_29

    aget-object v4, v0, v3

    .line 1011
    .local v4, "arg":Ljava/lang/String;
    if-eqz v4, :cond_23

    .line 1010
    .end local v4    # "arg":Ljava/lang/String;
    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    .line 1012
    .restart local v4    # "arg":Ljava/lang/String;
    :cond_23
    new-instance v1, Ljava/lang/NullPointerException;

    invoke-direct {v1}, Ljava/lang/NullPointerException;-><init>()V

    throw v1

    .line 1014
    .end local v4    # "arg":Ljava/lang/String;
    :cond_29
    aget-object v1, v0, v2

    .line 1016
    .local v1, "prog":Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v3

    .line 1017
    .local v3, "security":Ljava/lang/SecurityManager;
    if-eqz v3, :cond_34

    .line 1018
    invoke-virtual {v3, v1}, Ljava/lang/SecurityManager;->checkExec(Ljava/lang/String;)V

    .line 1020
    :cond_34
    iget-object v4, p0, Ljava/lang/ProcessBuilder;->directory:Ljava/io/File;

    if-nez v4, :cond_3a

    const/4 v4, 0x0

    goto :goto_40

    :cond_3a
    iget-object v4, p0, Ljava/lang/ProcessBuilder;->directory:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1022
    .local v4, "dir":Ljava/lang/String;
    :goto_40
    const/4 v5, 0x1

    .local v5, "i":I
    :goto_41
    array-length v6, v0

    if-ge v5, v6, :cond_57

    .line 1023
    aget-object v6, v0, v5

    invoke-virtual {v6, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-gez v6, :cond_4f

    .line 1022
    add-int/lit8 v5, v5, 0x1

    goto :goto_41

    .line 1024
    :cond_4f
    new-instance v2, Ljava/io/IOException;

    const-string v6, "invalid null character in command"

    invoke-direct {v2, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1029
    .end local v5    # "i":I
    :cond_57
    :try_start_57
    iget-object v2, p0, Ljava/lang/ProcessBuilder;->environment:Ljava/util/Map;

    iget-object v5, p0, Ljava/lang/ProcessBuilder;->redirects:[Ljava/lang/ProcessBuilder$Redirect;

    iget-boolean v6, p0, Ljava/lang/ProcessBuilder;->redirectErrorStream:Z

    invoke-static {v0, v2, v4, v5, v6}, Ljava/lang/ProcessImpl;->start([Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;[Ljava/lang/ProcessBuilder$Redirect;Z)Ljava/lang/Process;

    move-result-object v2
    :try_end_61
    .catch Ljava/io/IOException; {:try_start_57 .. :try_end_61} :catch_62
    .catch Ljava/lang/IllegalArgumentException; {:try_start_57 .. :try_end_61} :catch_62

    return-object v2

    .line 1034
    :catch_62
    move-exception v2

    .line 1035
    .local v2, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1036
    .local v5, "exceptionInfo":Ljava/lang/String;
    move-object v6, v2

    .line 1037
    .local v6, "cause":Ljava/lang/Throwable;
    instance-of v7, v2, Ljava/io/IOException;

    if-eqz v7, :cond_89

    if-eqz v3, :cond_89

    .line 1040
    :try_start_81
    invoke-virtual {v3, v1}, Ljava/lang/SecurityManager;->checkRead(Ljava/lang/String;)V
    :try_end_84
    .catch Ljava/lang/SecurityException; {:try_start_81 .. :try_end_84} :catch_85

    .line 1044
    goto :goto_89

    .line 1041
    :catch_85
    move-exception v7

    .line 1042
    .local v7, "se":Ljava/lang/SecurityException;
    const-string v5, ""

    .line 1043
    move-object v6, v7

    .line 1048
    .end local v7    # "se":Ljava/lang/SecurityException;
    :cond_89
    :goto_89
    new-instance v7, Ljava/io/IOException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Cannot run program \""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1050
    if-nez v4, :cond_a5

    const-string v9, ""

    goto :goto_be

    :cond_a5
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " (in directory \""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    :goto_be
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7
.end method
