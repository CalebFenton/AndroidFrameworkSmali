.class Landroid/icu/impl/ResourceBundleWrapper$2;
.super Landroid/icu/impl/ResourceBundleWrapper$Loader;
.source "ResourceBundleWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/icu/impl/ResourceBundleWrapper;->instantiateBundle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Landroid/icu/impl/ResourceBundleWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist val$baseName:Ljava/lang/String;

.field final synthetic blacklist val$defaultID:Ljava/lang/String;

.field final synthetic blacklist val$disableFallback:Z

.field final synthetic blacklist val$localeID:Ljava/lang/String;

.field final synthetic blacklist val$name:Ljava/lang/String;

.field final synthetic blacklist val$root:Ljava/lang/ClassLoader;


# direct methods
.method constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;ZLjava/lang/String;)V
    .registers 7

    .line 151
    iput-object p1, p0, Landroid/icu/impl/ResourceBundleWrapper$2;->val$localeID:Ljava/lang/String;

    iput-object p2, p0, Landroid/icu/impl/ResourceBundleWrapper$2;->val$baseName:Ljava/lang/String;

    iput-object p3, p0, Landroid/icu/impl/ResourceBundleWrapper$2;->val$defaultID:Ljava/lang/String;

    iput-object p4, p0, Landroid/icu/impl/ResourceBundleWrapper$2;->val$root:Ljava/lang/ClassLoader;

    iput-boolean p5, p0, Landroid/icu/impl/ResourceBundleWrapper$2;->val$disableFallback:Z

    iput-object p6, p0, Landroid/icu/impl/ResourceBundleWrapper$2;->val$name:Ljava/lang/String;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/icu/impl/ResourceBundleWrapper$Loader;-><init>(Landroid/icu/impl/ResourceBundleWrapper-IA;)V

    return-void
.end method


# virtual methods
.method public blacklist load()Landroid/icu/impl/ResourceBundleWrapper;
    .registers 14

    .line 154
    const-string v0, "failure"

    const/4 v1, 0x0

    .line 155
    .local v1, "parent":Landroid/icu/impl/ResourceBundleWrapper;
    iget-object v2, p0, Landroid/icu/impl/ResourceBundleWrapper$2;->val$localeID:Ljava/lang/String;

    const/16 v3, 0x5f

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v2

    .line 157
    .local v2, "i":I
    const/4 v4, 0x0

    .line 158
    .local v4, "loadFromProperties":Z
    const/4 v5, 0x0

    .line 159
    .local v5, "parentIsRoot":Z
    const/4 v6, -0x1

    if-eq v2, v6, :cond_24

    .line 160
    iget-object v6, p0, Landroid/icu/impl/ResourceBundleWrapper$2;->val$localeID:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual {v6, v7, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 161
    .local v6, "locName":Ljava/lang/String;
    iget-object v7, p0, Landroid/icu/impl/ResourceBundleWrapper$2;->val$baseName:Ljava/lang/String;

    iget-object v8, p0, Landroid/icu/impl/ResourceBundleWrapper$2;->val$defaultID:Ljava/lang/String;

    iget-object v9, p0, Landroid/icu/impl/ResourceBundleWrapper$2;->val$root:Ljava/lang/ClassLoader;

    iget-boolean v10, p0, Landroid/icu/impl/ResourceBundleWrapper$2;->val$disableFallback:Z

    invoke-static {v7, v6, v8, v9, v10}, Landroid/icu/impl/ResourceBundleWrapper;->-$$Nest$sminstantiateBundle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Landroid/icu/impl/ResourceBundleWrapper;

    move-result-object v1

    .end local v6    # "locName":Ljava/lang/String;
    goto :goto_3c

    .line 162
    :cond_24
    iget-object v6, p0, Landroid/icu/impl/ResourceBundleWrapper$2;->val$localeID:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3c

    .line 163
    iget-object v6, p0, Landroid/icu/impl/ResourceBundleWrapper$2;->val$baseName:Ljava/lang/String;

    iget-object v7, p0, Landroid/icu/impl/ResourceBundleWrapper$2;->val$defaultID:Ljava/lang/String;

    iget-object v8, p0, Landroid/icu/impl/ResourceBundleWrapper$2;->val$root:Ljava/lang/ClassLoader;

    iget-boolean v9, p0, Landroid/icu/impl/ResourceBundleWrapper$2;->val$disableFallback:Z

    const-string v10, ""

    invoke-static {v6, v10, v7, v8, v9}, Landroid/icu/impl/ResourceBundleWrapper;->-$$Nest$sminstantiateBundle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Landroid/icu/impl/ResourceBundleWrapper;

    move-result-object v1

    .line 164
    const/4 v5, 0x1

    goto :goto_3d

    .line 162
    :cond_3c
    :goto_3c
    nop

    .line 166
    :goto_3d
    const/4 v6, 0x0

    .line 168
    .local v6, "b":Landroid/icu/impl/ResourceBundleWrapper;
    const/4 v7, 0x0

    :try_start_3f
    iget-object v8, p0, Landroid/icu/impl/ResourceBundleWrapper$2;->val$root:Ljava/lang/ClassLoader;

    iget-object v9, p0, Landroid/icu/impl/ResourceBundleWrapper$2;->val$name:Ljava/lang/String;

    .line 169
    invoke-virtual {v8, v9}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    const-class v9, Ljava/util/ResourceBundle;

    invoke-virtual {v8, v9}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v8

    .line 170
    .local v8, "cls":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/util/ResourceBundle;>;"
    invoke-virtual {v8}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/ResourceBundle;

    .line 171
    .local v9, "bx":Ljava/util/ResourceBundle;
    new-instance v10, Landroid/icu/impl/ResourceBundleWrapper;

    invoke-direct {v10, v9, v7}, Landroid/icu/impl/ResourceBundleWrapper;-><init>(Ljava/util/ResourceBundle;Landroid/icu/impl/ResourceBundleWrapper-IA;)V

    move-object v6, v10

    .line 172
    if-eqz v1, :cond_5e

    .line 173
    # invokes: Landroid/icu/impl/ResourceBundleWrapper;->setParent(Ljava/util/ResourceBundle;)V
    invoke-static {v6, v1}, Landroid/icu/impl/ResourceBundleWrapper;->access$000(Landroid/icu/impl/ResourceBundleWrapper;Ljava/util/ResourceBundle;)V

    .line 175
    :cond_5e
    iget-object v10, p0, Landroid/icu/impl/ResourceBundleWrapper$2;->val$baseName:Ljava/lang/String;

    invoke-static {v6, v10}, Landroid/icu/impl/ResourceBundleWrapper;->-$$Nest$fputbaseName(Landroid/icu/impl/ResourceBundleWrapper;Ljava/lang/String;)V

    .line 176
    iget-object v10, p0, Landroid/icu/impl/ResourceBundleWrapper$2;->val$localeID:Ljava/lang/String;

    invoke-static {v6, v10}, Landroid/icu/impl/ResourceBundleWrapper;->-$$Nest$fputlocaleID(Landroid/icu/impl/ResourceBundleWrapper;Ljava/lang/String;)V
    :try_end_68
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3f .. :try_end_68} :catch_84
    .catch Ljava/lang/NoClassDefFoundError; {:try_start_3f .. :try_end_68} :catch_81
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_68} :catch_69

    .end local v8    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/util/ResourceBundle;>;"
    .end local v9    # "bx":Ljava/util/ResourceBundle;
    goto :goto_86

    .line 181
    :catch_69
    move-exception v8

    .line 182
    .local v8, "e":Ljava/lang/Exception;
    invoke-static {}, Landroid/icu/impl/ResourceBundleWrapper;->-$$Nest$sfgetDEBUG()Z

    move-result v9

    if-eqz v9, :cond_75

    .line 183
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v9, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 184
    :cond_75
    invoke-static {}, Landroid/icu/impl/ResourceBundleWrapper;->-$$Nest$sfgetDEBUG()Z

    move-result v9

    if-eqz v9, :cond_87

    .line 185
    sget-object v9, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v9, v8}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    goto :goto_87

    .line 179
    .end local v8    # "e":Ljava/lang/Exception;
    :catch_81
    move-exception v8

    .line 180
    .local v8, "e":Ljava/lang/NoClassDefFoundError;
    const/4 v4, 0x1

    .end local v8    # "e":Ljava/lang/NoClassDefFoundError;
    goto :goto_86

    .line 177
    :catch_84
    move-exception v8

    .line 178
    .local v8, "e":Ljava/lang/ClassNotFoundException;
    const/4 v4, 0x1

    .line 186
    .end local v8    # "e":Ljava/lang/ClassNotFoundException;
    :goto_86
    nop

    .line 188
    :cond_87
    :goto_87
    if-eqz v4, :cond_137

    .line 190
    :try_start_89
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Landroid/icu/impl/ResourceBundleWrapper$2;->val$name:Ljava/lang/String;

    const/16 v10, 0x2e

    const/16 v11, 0x2f

    invoke-virtual {v9, v10, v11}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ".properties"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 191
    .local v8, "resName":Ljava/lang/String;
    new-instance v9, Landroid/icu/impl/ResourceBundleWrapper$2$1;

    invoke-direct {v9, p0, v8}, Landroid/icu/impl/ResourceBundleWrapper$2$1;-><init>(Landroid/icu/impl/ResourceBundleWrapper$2;Ljava/lang/String;)V

    invoke-static {v9}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/io/InputStream;

    .line 199
    .local v9, "stream":Ljava/io/InputStream;
    if-eqz v9, :cond_e6

    .line 201
    new-instance v10, Ljava/io/BufferedInputStream;

    invoke-direct {v10, v9}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_b8
    .catch Ljava/lang/Exception; {:try_start_89 .. :try_end_b8} :catch_120

    move-object v9, v10

    .line 203
    :try_start_b9
    new-instance v10, Landroid/icu/impl/ResourceBundleWrapper;

    new-instance v11, Ljava/util/PropertyResourceBundle;

    invoke-direct {v11, v9}, Ljava/util/PropertyResourceBundle;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v10, v11, v7}, Landroid/icu/impl/ResourceBundleWrapper;-><init>(Ljava/util/ResourceBundle;Landroid/icu/impl/ResourceBundleWrapper-IA;)V

    move-object v6, v10

    .line 204
    if-eqz v1, :cond_c9

    .line 205
    # invokes: Landroid/icu/impl/ResourceBundleWrapper;->setParent(Ljava/util/ResourceBundle;)V
    invoke-static {v6, v1}, Landroid/icu/impl/ResourceBundleWrapper;->access$100(Landroid/icu/impl/ResourceBundleWrapper;Ljava/util/ResourceBundle;)V

    .line 207
    :cond_c9
    iget-object v7, p0, Landroid/icu/impl/ResourceBundleWrapper$2;->val$baseName:Ljava/lang/String;

    invoke-static {v6, v7}, Landroid/icu/impl/ResourceBundleWrapper;->-$$Nest$fputbaseName(Landroid/icu/impl/ResourceBundleWrapper;Ljava/lang/String;)V

    .line 208
    iget-object v7, p0, Landroid/icu/impl/ResourceBundleWrapper$2;->val$localeID:Ljava/lang/String;

    invoke-static {v6, v7}, Landroid/icu/impl/ResourceBundleWrapper;->-$$Nest$fputlocaleID(Landroid/icu/impl/ResourceBundleWrapper;Ljava/lang/String;)V
    :try_end_d3
    .catch Ljava/lang/Exception; {:try_start_b9 .. :try_end_d3} :catch_e1
    .catchall {:try_start_b9 .. :try_end_d3} :catchall_d9

    .line 213
    :try_start_d3
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_d6
    .catch Ljava/lang/Exception; {:try_start_d3 .. :try_end_d6} :catch_d7

    .line 216
    :goto_d6
    goto :goto_e6

    .line 214
    :catch_d7
    move-exception v7

    .line 217
    goto :goto_e6

    .line 212
    :catchall_d9
    move-exception v3

    .line 213
    :try_start_da
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_dd
    .catch Ljava/lang/Exception; {:try_start_da .. :try_end_dd} :catch_de

    .line 216
    goto :goto_df

    .line 214
    :catch_de
    move-exception v7

    .line 217
    :goto_df
    nop

    .end local v1    # "parent":Landroid/icu/impl/ResourceBundleWrapper;
    .end local v2    # "i":I
    .end local v4    # "loadFromProperties":Z
    .end local v5    # "parentIsRoot":Z
    .end local v6    # "b":Landroid/icu/impl/ResourceBundleWrapper;
    .end local p0    # "this":Landroid/icu/impl/ResourceBundleWrapper$2;
    :try_start_e0
    throw v3
    :try_end_e1
    .catch Ljava/lang/Exception; {:try_start_e0 .. :try_end_e1} :catch_120

    .line 209
    .restart local v1    # "parent":Landroid/icu/impl/ResourceBundleWrapper;
    .restart local v2    # "i":I
    .restart local v4    # "loadFromProperties":Z
    .restart local v5    # "parentIsRoot":Z
    .restart local v6    # "b":Landroid/icu/impl/ResourceBundleWrapper;
    .restart local p0    # "this":Landroid/icu/impl/ResourceBundleWrapper$2;
    :catch_e1
    move-exception v7

    .line 213
    :try_start_e2
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_e5
    .catch Ljava/lang/Exception; {:try_start_e2 .. :try_end_e5} :catch_d7

    goto :goto_d6

    .line 222
    :cond_e6
    :goto_e6
    if-nez v6, :cond_115

    :try_start_e8
    iget-boolean v7, p0, Landroid/icu/impl/ResourceBundleWrapper$2;->val$disableFallback:Z

    if-nez v7, :cond_115

    iget-object v7, p0, Landroid/icu/impl/ResourceBundleWrapper$2;->val$localeID:Ljava/lang/String;

    .line 223
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_115

    iget-object v7, p0, Landroid/icu/impl/ResourceBundleWrapper$2;->val$localeID:Ljava/lang/String;

    invoke-virtual {v7, v3}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    if-gez v3, :cond_115

    iget-object v3, p0, Landroid/icu/impl/ResourceBundleWrapper$2;->val$defaultID:Ljava/lang/String;

    iget-object v7, p0, Landroid/icu/impl/ResourceBundleWrapper$2;->val$localeID:Ljava/lang/String;

    .line 224
    invoke-static {v3, v7}, Landroid/icu/impl/ResourceBundleWrapper;->-$$Nest$smlocaleIDStartsWithLangSubtag(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_115

    .line 226
    iget-object v3, p0, Landroid/icu/impl/ResourceBundleWrapper$2;->val$baseName:Ljava/lang/String;

    iget-object v7, p0, Landroid/icu/impl/ResourceBundleWrapper$2;->val$defaultID:Ljava/lang/String;

    iget-object v10, p0, Landroid/icu/impl/ResourceBundleWrapper$2;->val$defaultID:Ljava/lang/String;

    iget-object v11, p0, Landroid/icu/impl/ResourceBundleWrapper$2;->val$root:Ljava/lang/ClassLoader;

    iget-boolean v12, p0, Landroid/icu/impl/ResourceBundleWrapper$2;->val$disableFallback:Z

    invoke-static {v3, v7, v10, v11, v12}, Landroid/icu/impl/ResourceBundleWrapper;->-$$Nest$sminstantiateBundle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;Z)Landroid/icu/impl/ResourceBundleWrapper;

    move-result-object v3

    move-object v6, v3

    .line 229
    :cond_115
    if-nez v6, :cond_11f

    if-eqz v5, :cond_11d

    iget-boolean v0, p0, Landroid/icu/impl/ResourceBundleWrapper$2;->val$disableFallback:Z
    :try_end_11b
    .catch Ljava/lang/Exception; {:try_start_e8 .. :try_end_11b} :catch_120

    if-nez v0, :cond_11f

    .line 230
    :cond_11d
    move-object v0, v1

    move-object v6, v0

    .line 237
    .end local v8    # "resName":Ljava/lang/String;
    .end local v9    # "stream":Ljava/io/InputStream;
    :cond_11f
    goto :goto_137

    .line 232
    :catch_120
    move-exception v3

    .line 233
    .local v3, "e":Ljava/lang/Exception;
    invoke-static {}, Landroid/icu/impl/ResourceBundleWrapper;->-$$Nest$sfgetDEBUG()Z

    move-result v7

    if-eqz v7, :cond_12c

    .line 234
    sget-object v7, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v7, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 235
    :cond_12c
    invoke-static {}, Landroid/icu/impl/ResourceBundleWrapper;->-$$Nest$sfgetDEBUG()Z

    move-result v0

    if-eqz v0, :cond_137

    .line 236
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 239
    .end local v3    # "e":Ljava/lang/Exception;
    :cond_137
    :goto_137
    if-eqz v6, :cond_13d

    .line 240
    invoke-static {v6}, Landroid/icu/impl/ResourceBundleWrapper;->-$$Nest$minitKeysVector(Landroid/icu/impl/ResourceBundleWrapper;)V

    goto :goto_169

    .line 242
    :cond_13d
    invoke-static {}, Landroid/icu/impl/ResourceBundleWrapper;->-$$Nest$sfgetDEBUG()Z

    move-result v0

    if-eqz v0, :cond_169

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Returning null for "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v7, p0, Landroid/icu/impl/ResourceBundleWrapper$2;->val$baseName:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, "_"

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v7, p0, Landroid/icu/impl/ResourceBundleWrapper$2;->val$localeID:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 244
    :cond_169
    :goto_169
    return-object v6
.end method
