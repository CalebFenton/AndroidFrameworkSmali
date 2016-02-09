.class public Ljava/util/logging/Level;
.super Ljava/lang/Object;
.source "Level.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final ALL:Ljava/util/logging/Level;

.field public static final CONFIG:Ljava/util/logging/Level;

.field public static final FINE:Ljava/util/logging/Level;

.field public static final FINER:Ljava/util/logging/Level;

.field public static final FINEST:Ljava/util/logging/Level;

.field public static final INFO:Ljava/util/logging/Level;

.field public static final OFF:Ljava/util/logging/Level;

.field public static final SEVERE:Ljava/util/logging/Level;

.field public static final WARNING:Ljava/util/logging/Level;

.field private static final levels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/logging/Level;",
            ">;"
        }
    .end annotation
.end field

.field private static final serialVersionUID:J = -0x71778eecae8cc96eL


# instance fields
.field private final name:Ljava/lang/String;

.field private transient rb:Ljava/util/ResourceBundle;

.field private final resourceBundleName:Ljava/lang/String;

.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 46
    new-instance v0, Ljava/util/ArrayList;

    #@2
    const/16 v1, 0x9

    #@4
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    #@7
    sput-object v0, Ljava/util/logging/Level;->levels:Ljava/util/List;

    #@9
    .line 51
    new-instance v0, Ljava/util/logging/Level;

    #@b
    const-string/jumbo v1, "OFF"

    #@e
    const v2, 0x7fffffff

    #@11
    invoke-direct {v0, v1, v2}, Ljava/util/logging/Level;-><init>(Ljava/lang/String;I)V

    #@14
    sput-object v0, Ljava/util/logging/Level;->OFF:Ljava/util/logging/Level;

    #@16
    .line 56
    new-instance v0, Ljava/util/logging/Level;

    #@18
    const-string/jumbo v1, "SEVERE"

    #@1b
    const/16 v2, 0x3e8

    #@1d
    invoke-direct {v0, v1, v2}, Ljava/util/logging/Level;-><init>(Ljava/lang/String;I)V

    #@20
    sput-object v0, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    #@22
    .line 61
    new-instance v0, Ljava/util/logging/Level;

    #@24
    const-string/jumbo v1, "WARNING"

    #@27
    const/16 v2, 0x384

    #@29
    invoke-direct {v0, v1, v2}, Ljava/util/logging/Level;-><init>(Ljava/lang/String;I)V

    #@2c
    sput-object v0, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    #@2e
    .line 66
    new-instance v0, Ljava/util/logging/Level;

    #@30
    const-string/jumbo v1, "INFO"

    #@33
    const/16 v2, 0x320

    #@35
    invoke-direct {v0, v1, v2}, Ljava/util/logging/Level;-><init>(Ljava/lang/String;I)V

    #@38
    sput-object v0, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    #@3a
    .line 71
    new-instance v0, Ljava/util/logging/Level;

    #@3c
    const-string/jumbo v1, "CONFIG"

    #@3f
    const/16 v2, 0x2bc

    #@41
    invoke-direct {v0, v1, v2}, Ljava/util/logging/Level;-><init>(Ljava/lang/String;I)V

    #@44
    sput-object v0, Ljava/util/logging/Level;->CONFIG:Ljava/util/logging/Level;

    #@46
    .line 76
    new-instance v0, Ljava/util/logging/Level;

    #@48
    const-string/jumbo v1, "FINE"

    #@4b
    const/16 v2, 0x1f4

    #@4d
    invoke-direct {v0, v1, v2}, Ljava/util/logging/Level;-><init>(Ljava/lang/String;I)V

    #@50
    sput-object v0, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    #@52
    .line 81
    new-instance v0, Ljava/util/logging/Level;

    #@54
    const-string/jumbo v1, "FINER"

    #@57
    const/16 v2, 0x190

    #@59
    invoke-direct {v0, v1, v2}, Ljava/util/logging/Level;-><init>(Ljava/lang/String;I)V

    #@5c
    sput-object v0, Ljava/util/logging/Level;->FINER:Ljava/util/logging/Level;

    #@5e
    .line 86
    new-instance v0, Ljava/util/logging/Level;

    #@60
    const-string/jumbo v1, "FINEST"

    #@63
    const/16 v2, 0x12c

    #@65
    invoke-direct {v0, v1, v2}, Ljava/util/logging/Level;-><init>(Ljava/lang/String;I)V

    #@68
    sput-object v0, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    #@6a
    .line 91
    new-instance v0, Ljava/util/logging/Level;

    #@6c
    const-string/jumbo v1, "ALL"

    #@6f
    const/high16 v2, -0x80000000

    #@71
    invoke-direct {v0, v1, v2}, Ljava/util/logging/Level;-><init>(Ljava/lang/String;I)V

    #@74
    sput-object v0, Ljava/util/logging/Level;->ALL:Ljava/util/logging/Level;

    #@76
    .line 42
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "level"    # I

    #@0
    .prologue
    .line 186
    const/4 v0, 0x0

    #@1
    invoke-direct {p0, p1, p2, v0}, Ljava/util/logging/Level;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    #@4
    .line 185
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "level"    # I
    .param p3, "resourceBundleName"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 203
    if-nez p1, :cond_0

    #@6
    .line 204
    new-instance v1, Ljava/lang/NullPointerException;

    #@8
    const-string/jumbo v2, "name == null"

    #@b
    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@e
    throw v1

    #@f
    .line 206
    :cond_0
    iput-object p1, p0, Ljava/util/logging/Level;->name:Ljava/lang/String;

    #@11
    .line 207
    iput p2, p0, Ljava/util/logging/Level;->value:I

    #@13
    .line 208
    iput-object p3, p0, Ljava/util/logging/Level;->resourceBundleName:Ljava/lang/String;

    #@15
    .line 209
    if-eqz p3, :cond_1

    #@17
    .line 212
    :try_start_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    #@1a
    move-result-object v1

    #@1b
    invoke-static {}, Ldalvik/system/VMStack;->getCallingClassLoader()Ljava/lang/ClassLoader;

    #@1e
    move-result-object v2

    #@1f
    .line 211
    invoke-static {p3, v1, v2}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;Ljava/lang/ClassLoader;)Ljava/util/ResourceBundle;

    #@22
    move-result-object v1

    #@23
    iput-object v1, p0, Ljava/util/logging/Level;->rb:Ljava/util/ResourceBundle;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    #@25
    .line 217
    :cond_1
    :goto_0
    sget-object v2, Ljava/util/logging/Level;->levels:Ljava/util/List;

    #@27
    monitor-enter v2

    #@28
    .line 218
    :try_start_1
    sget-object v1, Ljava/util/logging/Level;->levels:Ljava/util/List;

    #@2a
    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2d
    monitor-exit v2

    #@2e
    .line 202
    return-void

    #@2f
    .line 213
    :catch_0
    move-exception v0

    #@30
    .line 214
    .local v0, "e":Ljava/util/MissingResourceException;
    iput-object v3, p0, Ljava/util/logging/Level;->rb:Ljava/util/ResourceBundle;

    #@32
    goto :goto_0

    #@33
    .line 217
    .end local v0    # "e":Ljava/util/MissingResourceException;
    :catchall_0
    move-exception v1

    #@34
    monitor-exit v2

    #@35
    throw v1
.end method

.method public static parse(Ljava/lang/String;)Ljava/util/logging/Level;
    .locals 8
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    #@0
    .prologue
    .line 106
    if-nez p0, :cond_0

    #@2
    .line 107
    new-instance v5, Ljava/lang/NullPointerException;

    #@4
    const-string/jumbo v6, "name == null"

    #@7
    invoke-direct {v5, v6}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    #@a
    throw v5

    #@b
    .line 113
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    #@e
    move-result v4

    #@f
    .line 114
    .local v4, "nameAsInt":I
    const/4 v1, 0x1

    #@10
    .line 120
    .local v1, "isNameAnInt":Z
    :goto_0
    sget-object v6, Ljava/util/logging/Level;->levels:Ljava/util/List;

    #@12
    monitor-enter v6

    #@13
    .line 121
    :try_start_1
    sget-object v5, Ljava/util/logging/Level;->levels:Ljava/util/List;

    #@15
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@18
    move-result-object v3

    #@19
    .local v3, "level$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@1c
    move-result v5

    #@1d
    if-eqz v5, :cond_2

    #@1f
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@22
    move-result-object v2

    #@23
    check-cast v2, Ljava/util/logging/Level;

    #@25
    .line 122
    .local v2, "level":Ljava/util/logging/Level;
    invoke-virtual {v2}, Ljava/util/logging/Level;->getName()Ljava/lang/String;

    #@28
    move-result-object v5

    #@29
    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@2c
    move-result v5

    #@2d
    if-eqz v5, :cond_1

    #@2f
    monitor-exit v6

    #@30
    .line 123
    return-object v2

    #@31
    .line 115
    .end local v1    # "isNameAnInt":Z
    .end local v2    # "level":Ljava/util/logging/Level;
    .end local v3    # "level$iterator":Ljava/util/Iterator;
    .end local v4    # "nameAsInt":I
    :catch_0
    move-exception v0

    #@32
    .line 116
    .local v0, "e":Ljava/lang/NumberFormatException;
    const/4 v4, 0x0

    #@33
    .line 117
    .restart local v4    # "nameAsInt":I
    const/4 v1, 0x0

    #@34
    .restart local v1    # "isNameAnInt":Z
    goto :goto_0

    #@35
    .line 127
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .restart local v3    # "level$iterator":Ljava/util/Iterator;
    :cond_2
    if-eqz v1, :cond_4

    #@37
    .line 132
    :try_start_2
    sget-object v5, Ljava/util/logging/Level;->levels:Ljava/util/List;

    #@39
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@3c
    move-result-object v3

    #@3d
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@40
    move-result v5

    #@41
    if-eqz v5, :cond_4

    #@43
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@46
    move-result-object v2

    #@47
    check-cast v2, Ljava/util/logging/Level;

    #@49
    .line 133
    .restart local v2    # "level":Ljava/util/logging/Level;
    invoke-virtual {v2}, Ljava/util/logging/Level;->intValue()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@4c
    move-result v5

    #@4d
    if-ne v4, v5, :cond_3

    #@4f
    monitor-exit v6

    #@50
    .line 134
    return-object v2

    #@51
    .end local v2    # "level":Ljava/util/logging/Level;
    :cond_4
    monitor-exit v6

    #@52
    .line 140
    if-nez v1, :cond_5

    #@54
    .line 141
    new-instance v5, Ljava/lang/IllegalArgumentException;

    #@56
    new-instance v6, Ljava/lang/StringBuilder;

    #@58
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #@5b
    const-string/jumbo v7, "Cannot parse name \'"

    #@5e
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v6

    #@62
    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@65
    move-result-object v6

    #@66
    const-string/jumbo v7, "\'"

    #@69
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6c
    move-result-object v6

    #@6d
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@70
    move-result-object v6

    #@71
    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@74
    throw v5

    #@75
    .line 120
    .end local v3    # "level$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v5

    #@76
    monitor-exit v6

    #@77
    throw v5

    #@78
    .line 144
    .restart local v3    # "level$iterator":Ljava/util/Iterator;
    :cond_5
    new-instance v5, Ljava/util/logging/Level;

    #@7a
    invoke-direct {v5, p0, v4}, Ljava/util/logging/Level;-><init>(Ljava/lang/String;I)V

    #@7d
    return-object v5
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 3
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 286
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    #@4
    .line 287
    iget-object v1, p0, Ljava/util/logging/Level;->resourceBundleName:Ljava/lang/String;

    #@6
    if-eqz v1, :cond_0

    #@8
    .line 289
    :try_start_0
    iget-object v1, p0, Ljava/util/logging/Level;->resourceBundleName:Ljava/lang/String;

    #@a
    invoke-static {v1}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;)Ljava/util/ResourceBundle;

    #@d
    move-result-object v1

    #@e
    iput-object v1, p0, Ljava/util/logging/Level;->rb:Ljava/util/ResourceBundle;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    #@10
    .line 285
    :cond_0
    :goto_0
    return-void

    #@11
    .line 290
    :catch_0
    move-exception v0

    #@12
    .line 291
    .local v0, "e":Ljava/util/MissingResourceException;
    iput-object v2, p0, Ljava/util/logging/Level;->rb:Ljava/util/ResourceBundle;

    #@14
    goto :goto_0
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 5

    #@0
    .prologue
    .line 256
    sget-object v3, Ljava/util/logging/Level;->levels:Ljava/util/List;

    #@2
    monitor-enter v3

    #@3
    .line 257
    :try_start_0
    sget-object v2, Ljava/util/logging/Level;->levels:Ljava/util/List;

    #@5
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@8
    move-result-object v1

    #@9
    .local v1, "level$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@c
    move-result v2

    #@d
    if-eqz v2, :cond_1

    #@f
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@12
    move-result-object v0

    #@13
    check-cast v0, Ljava/util/logging/Level;

    #@15
    .line 258
    .local v0, "level":Ljava/util/logging/Level;
    iget v2, p0, Ljava/util/logging/Level;->value:I

    #@17
    iget v4, v0, Ljava/util/logging/Level;->value:I

    #@19
    if-ne v2, v4, :cond_0

    #@1b
    .line 261
    iget-object v2, p0, Ljava/util/logging/Level;->name:Ljava/lang/String;

    #@1d
    iget-object v4, v0, Ljava/util/logging/Level;->name:Ljava/lang/String;

    #@1f
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@22
    move-result v2

    #@23
    if-eqz v2, :cond_0

    #@25
    .line 264
    iget-object v2, p0, Ljava/util/logging/Level;->resourceBundleName:Ljava/lang/String;

    #@27
    iget-object v4, v0, Ljava/util/logging/Level;->resourceBundleName:Ljava/lang/String;

    #@29
    invoke-static {v2, v4}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@2c
    move-result v2

    #@2d
    if-eqz v2, :cond_0

    #@2f
    monitor-exit v3

    #@30
    .line 265
    return-object v0

    #@31
    .line 269
    .end local v0    # "level":Ljava/util/logging/Level;
    :cond_1
    :try_start_1
    sget-object v2, Ljava/util/logging/Level;->levels:Ljava/util/List;

    #@33
    invoke-interface {v2, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@36
    monitor-exit v3

    #@37
    .line 270
    return-object p0

    #@38
    .line 256
    .end local v1    # "level$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    #@39
    monitor-exit v3

    #@3a
    throw v2
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    const/4 v1, 0x0

    #@2
    .line 326
    if-ne p0, p1, :cond_0

    #@4
    .line 327
    return v0

    #@5
    .line 330
    :cond_0
    instance-of v2, p1, Ljava/util/logging/Level;

    #@7
    if-nez v2, :cond_1

    #@9
    .line 331
    return v1

    #@a
    .line 334
    :cond_1
    check-cast p1, Ljava/util/logging/Level;

    #@c
    .end local p1    # "o":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/util/logging/Level;->intValue()I

    #@f
    move-result v2

    #@10
    iget v3, p0, Ljava/util/logging/Level;->value:I

    #@12
    if-ne v2, v3, :cond_2

    #@14
    :goto_0
    return v0

    #@15
    :cond_2
    move v0, v1

    #@16
    goto :goto_0
.end method

.method public getLocalizedName()Ljava/lang/String;
    .locals 3

    #@0
    .prologue
    .line 304
    iget-object v1, p0, Ljava/util/logging/Level;->rb:Ljava/util/ResourceBundle;

    #@2
    if-nez v1, :cond_0

    #@4
    .line 305
    iget-object v1, p0, Ljava/util/logging/Level;->name:Ljava/lang/String;

    #@6
    return-object v1

    #@7
    .line 309
    :cond_0
    :try_start_0
    iget-object v1, p0, Ljava/util/logging/Level;->rb:Ljava/util/ResourceBundle;

    #@9
    iget-object v2, p0, Ljava/util/logging/Level;->name:Ljava/lang/String;

    #@b
    invoke-virtual {v1, v2}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/util/MissingResourceException; {:try_start_0 .. :try_end_0} :catch_0

    #@e
    move-result-object v1

    #@f
    return-object v1

    #@10
    .line 310
    :catch_0
    move-exception v0

    #@11
    .line 311
    .local v0, "e":Ljava/util/MissingResourceException;
    iget-object v1, p0, Ljava/util/logging/Level;->name:Ljava/lang/String;

    #@13
    return-object v1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 228
    iget-object v0, p0, Ljava/util/logging/Level;->name:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public getResourceBundleName()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 237
    iget-object v0, p0, Ljava/util/logging/Level;->resourceBundleName:Ljava/lang/String;

    #@2
    return-object v0
.end method

.method public hashCode()I
    .locals 1

    #@0
    .prologue
    .line 344
    iget v0, p0, Ljava/util/logging/Level;->value:I

    #@2
    return v0
.end method

.method public final intValue()I
    .locals 1

    #@0
    .prologue
    .line 246
    iget v0, p0, Ljava/util/logging/Level;->value:I

    #@2
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    #@0
    .prologue
    .line 355
    iget-object v0, p0, Ljava/util/logging/Level;->name:Ljava/lang/String;

    #@2
    return-object v0
.end method
