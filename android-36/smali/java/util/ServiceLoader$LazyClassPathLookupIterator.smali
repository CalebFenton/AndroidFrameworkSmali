.class final Ljava/util/ServiceLoader$LazyClassPathLookupIterator;
.super Ljava/lang/Object;
.source "ServiceLoader.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/ServiceLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LazyClassPathLookupIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/util/ServiceLoader$Provider<",
        "TT;>;>;"
    }
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field static final blacklist PREFIX:Ljava/lang/String; = "META-INF/services/"


# instance fields
.field blacklist configs:Ljava/util/Enumeration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Enumeration<",
            "Ljava/net/URL;",
            ">;"
        }
    .end annotation
.end field

.field blacklist nextError:Ljava/util/ServiceConfigurationError;

.field blacklist nextProvider:Ljava/util/ServiceLoader$Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ServiceLoader$Provider<",
            "TT;>;"
        }
    .end annotation
.end field

.field blacklist pending:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field blacklist providerNames:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic blacklist this$0:Ljava/util/ServiceLoader;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 1065
    const-class v0, Ljava/util/ServiceLoader;

    return-void
.end method

.method constructor blacklist <init>(Ljava/util/ServiceLoader;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 1077
    .local p0, "this":Ljava/util/ServiceLoader$LazyClassPathLookupIterator;, "Ljava/util/ServiceLoader<TS;>.LazyClassPathLookupIterator<TT;>;"
    iput-object p1, p0, Ljava/util/ServiceLoader$LazyClassPathLookupIterator;->this$0:Ljava/util/ServiceLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1070
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Ljava/util/ServiceLoader$LazyClassPathLookupIterator;->providerNames:Ljava/util/Set;

    .line 1077
    return-void
.end method

.method private blacklist hasNextService()Z
    .registers 6

    .line 1182
    .local p0, "this":Ljava/util/ServiceLoader$LazyClassPathLookupIterator;, "Ljava/util/ServiceLoader<TS;>.LazyClassPathLookupIterator<TT;>;"
    nop

    :goto_1
    iget-object v0, p0, Ljava/util/ServiceLoader$LazyClassPathLookupIterator;->nextProvider:Ljava/util/ServiceLoader$Provider;

    if-nez v0, :cond_81

    iget-object v0, p0, Ljava/util/ServiceLoader$LazyClassPathLookupIterator;->nextError:Ljava/util/ServiceConfigurationError;

    if-nez v0, :cond_81

    .line 1184
    :try_start_9
    invoke-direct {p0}, Ljava/util/ServiceLoader$LazyClassPathLookupIterator;->nextProviderClass()Ljava/lang/Class;

    move-result-object v0

    .line 1185
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v0, :cond_11

    .line 1186
    const/4 v1, 0x0

    return v1

    .line 1196
    :cond_11
    iget-object v1, p0, Ljava/util/ServiceLoader$LazyClassPathLookupIterator;->this$0:Ljava/util/ServiceLoader;

    invoke-static {v1}, Ljava/util/ServiceLoader;->-$$Nest$fgetservice(Ljava/util/ServiceLoader;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_32

    .line 1197
    move-object v1, v0

    .line 1198
    .local v1, "type":Ljava/lang/Class;, "Ljava/lang/Class<+TS;>;"
    iget-object v2, p0, Ljava/util/ServiceLoader$LazyClassPathLookupIterator;->this$0:Ljava/util/ServiceLoader;

    .line 1199
    invoke-static {v2, v0}, Ljava/util/ServiceLoader;->-$$Nest$mgetConstructor(Ljava/util/ServiceLoader;Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 1202
    .local v2, "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+TS;>;"
    new-instance v3, Ljava/util/ServiceLoader$ProviderImpl;

    iget-object v4, p0, Ljava/util/ServiceLoader$LazyClassPathLookupIterator;->this$0:Ljava/util/ServiceLoader;

    invoke-static {v4}, Ljava/util/ServiceLoader;->-$$Nest$fgetservice(Ljava/util/ServiceLoader;)Ljava/lang/Class;

    move-result-object v4

    invoke-direct {v3, v4, v1, v2}, Ljava/util/ServiceLoader$ProviderImpl;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/reflect/Constructor;)V

    .line 1203
    .local v3, "p":Ljava/util/ServiceLoader$ProviderImpl;, "Ljava/util/ServiceLoader$ProviderImpl<TS;>;"
    iput-object v3, p0, Ljava/util/ServiceLoader$LazyClassPathLookupIterator;->nextProvider:Ljava/util/ServiceLoader$Provider;

    .line 1204
    .end local v1    # "type":Ljava/lang/Class;, "Ljava/lang/Class<+TS;>;"
    .end local v2    # "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<+TS;>;"
    .end local v3    # "p":Ljava/util/ServiceLoader$ProviderImpl;, "Ljava/util/ServiceLoader$ProviderImpl<TS;>;"
    goto :goto_80

    .line 1207
    :cond_32
    new-instance v1, Ljava/lang/ClassCastException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Ljava/util/ServiceLoader$LazyClassPathLookupIterator;->this$0:Ljava/util/ServiceLoader;

    invoke-static {v3}, Ljava/util/ServiceLoader;->-$$Nest$fgetservice(Ljava/util/ServiceLoader;)Ljava/lang/Class;

    move-result-object v3

    .line 1208
    invoke-virtual {v3}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is not assignable from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    .line 1209
    .local v1, "cce":Ljava/lang/ClassCastException;
    iget-object v2, p0, Ljava/util/ServiceLoader$LazyClassPathLookupIterator;->this$0:Ljava/util/ServiceLoader;

    invoke-static {v2}, Ljava/util/ServiceLoader;->-$$Nest$fgetservice(Ljava/util/ServiceLoader;)Ljava/lang/Class;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " not a subtype"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Ljava/util/ServiceLoader;->-$$Nest$smfail(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7c
    .catch Ljava/util/ServiceConfigurationError; {:try_start_9 .. :try_end_7c} :catch_7d

    goto :goto_80

    .line 1211
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v1    # "cce":Ljava/lang/ClassCastException;
    :catch_7d
    move-exception v0

    .line 1212
    .local v0, "e":Ljava/util/ServiceConfigurationError;
    iput-object v0, p0, Ljava/util/ServiceLoader$LazyClassPathLookupIterator;->nextError:Ljava/util/ServiceConfigurationError;

    .line 1213
    .end local v0    # "e":Ljava/util/ServiceConfigurationError;
    :goto_80
    goto :goto_1

    .line 1215
    :cond_81
    const/4 v0, 0x1

    return v0
.end method

.method private blacklist nextProviderClass()Ljava/lang/Class;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1139
    .local p0, "this":Ljava/util/ServiceLoader$LazyClassPathLookupIterator;, "Ljava/util/ServiceLoader<TS;>.LazyClassPathLookupIterator<TT;>;"
    iget-object v0, p0, Ljava/util/ServiceLoader$LazyClassPathLookupIterator;->configs:Ljava/util/Enumeration;

    if-nez v0, :cond_49

    .line 1141
    :try_start_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "META-INF/services/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ljava/util/ServiceLoader$LazyClassPathLookupIterator;->this$0:Ljava/util/ServiceLoader;

    invoke-static {v1}, Ljava/util/ServiceLoader;->-$$Nest$fgetservice(Ljava/util/ServiceLoader;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1142
    .local v0, "fullName":Ljava/lang/String;
    iget-object v1, p0, Ljava/util/ServiceLoader$LazyClassPathLookupIterator;->this$0:Ljava/util/ServiceLoader;

    invoke-static {v1}, Ljava/util/ServiceLoader;->-$$Nest$fgetloader(Ljava/util/ServiceLoader;)Ljava/lang/ClassLoader;

    move-result-object v1

    if-nez v1, :cond_30

    .line 1143
    invoke-static {v0}, Ljava/lang/ClassLoader;->getSystemResources(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v1

    iput-object v1, p0, Ljava/util/ServiceLoader$LazyClassPathLookupIterator;->configs:Ljava/util/Enumeration;

    goto :goto_3c

    .line 1157
    :cond_30
    iget-object v1, p0, Ljava/util/ServiceLoader$LazyClassPathLookupIterator;->this$0:Ljava/util/ServiceLoader;

    invoke-static {v1}, Ljava/util/ServiceLoader;->-$$Nest$fgetloader(Ljava/util/ServiceLoader;)Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/ClassLoader;->getResources(Ljava/lang/String;)Ljava/util/Enumeration;

    move-result-object v1

    iput-object v1, p0, Ljava/util/ServiceLoader$LazyClassPathLookupIterator;->configs:Ljava/util/Enumeration;
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_3c} :catch_3d

    .line 1161
    .end local v0    # "fullName":Ljava/lang/String;
    :goto_3c
    goto :goto_49

    .line 1159
    :catch_3d
    move-exception v0

    .line 1160
    .local v0, "x":Ljava/io/IOException;
    iget-object v1, p0, Ljava/util/ServiceLoader$LazyClassPathLookupIterator;->this$0:Ljava/util/ServiceLoader;

    invoke-static {v1}, Ljava/util/ServiceLoader;->-$$Nest$fgetservice(Ljava/util/ServiceLoader;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "Error locating configuration files"

    invoke-static {v1, v2, v0}, Ljava/util/ServiceLoader;->-$$Nest$smfail(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1163
    .end local v0    # "x":Ljava/io/IOException;
    :cond_49
    :goto_49
    iget-object v0, p0, Ljava/util/ServiceLoader$LazyClassPathLookupIterator;->pending:Ljava/util/Iterator;

    const/4 v1, 0x0

    if-eqz v0, :cond_8f

    iget-object v0, p0, Ljava/util/ServiceLoader$LazyClassPathLookupIterator;->pending:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_57

    goto :goto_8f

    .line 1169
    :cond_57
    iget-object v0, p0, Ljava/util/ServiceLoader$LazyClassPathLookupIterator;->pending:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1171
    .local v0, "cn":Ljava/lang/String;
    :try_start_5f
    iget-object v2, p0, Ljava/util/ServiceLoader$LazyClassPathLookupIterator;->this$0:Ljava/util/ServiceLoader;

    invoke-static {v2}, Ljava/util/ServiceLoader;->-$$Nest$fgetloader(Ljava/util/ServiceLoader;)Ljava/lang/ClassLoader;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v0, v3, v2}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v1
    :try_end_6a
    .catch Ljava/lang/ClassNotFoundException; {:try_start_5f .. :try_end_6a} :catch_6b

    return-object v1

    .line 1172
    :catch_6b
    move-exception v2

    .line 1175
    .local v2, "x":Ljava/lang/ClassNotFoundException;
    iget-object v3, p0, Ljava/util/ServiceLoader$LazyClassPathLookupIterator;->this$0:Ljava/util/ServiceLoader;

    invoke-static {v3}, Ljava/util/ServiceLoader;->-$$Nest$fgetservice(Ljava/util/ServiceLoader;)Ljava/lang/Class;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Provider "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " not found"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Ljava/util/ServiceLoader;->-$$Nest$smfail(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1176
    return-object v1

    .line 1164
    .end local v0    # "cn":Ljava/lang/String;
    .end local v2    # "x":Ljava/lang/ClassNotFoundException;
    :cond_8f
    :goto_8f
    iget-object v0, p0, Ljava/util/ServiceLoader$LazyClassPathLookupIterator;->configs:Ljava/util/Enumeration;

    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-nez v0, :cond_98

    .line 1165
    return-object v1

    .line 1167
    :cond_98
    iget-object v0, p0, Ljava/util/ServiceLoader$LazyClassPathLookupIterator;->configs:Ljava/util/Enumeration;

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/URL;

    invoke-direct {p0, v0}, Ljava/util/ServiceLoader$LazyClassPathLookupIterator;->parse(Ljava/net/URL;)Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Ljava/util/ServiceLoader$LazyClassPathLookupIterator;->pending:Ljava/util/Iterator;

    goto :goto_49
.end method

.method private blacklist nextService()Ljava/util/ServiceLoader$Provider;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ServiceLoader$Provider<",
            "TT;>;"
        }
    .end annotation

    .line 1219
    .local p0, "this":Ljava/util/ServiceLoader$LazyClassPathLookupIterator;, "Ljava/util/ServiceLoader<TS;>.LazyClassPathLookupIterator<TT;>;"
    invoke-direct {p0}, Ljava/util/ServiceLoader$LazyClassPathLookupIterator;->hasNextService()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 1221
    iget-object v0, p0, Ljava/util/ServiceLoader$LazyClassPathLookupIterator;->nextProvider:Ljava/util/ServiceLoader$Provider;

    .line 1222
    .local v0, "provider":Ljava/util/ServiceLoader$Provider;, "Ljava/util/ServiceLoader$Provider<TT;>;"
    const/4 v1, 0x0

    if-eqz v0, :cond_e

    .line 1223
    iput-object v1, p0, Ljava/util/ServiceLoader$LazyClassPathLookupIterator;->nextProvider:Ljava/util/ServiceLoader$Provider;

    .line 1224
    return-object v0

    .line 1226
    :cond_e
    iget-object v2, p0, Ljava/util/ServiceLoader$LazyClassPathLookupIterator;->nextError:Ljava/util/ServiceConfigurationError;

    .line 1227
    .local v2, "e":Ljava/util/ServiceConfigurationError;
    nop

    .line 1228
    iput-object v1, p0, Ljava/util/ServiceLoader$LazyClassPathLookupIterator;->nextError:Ljava/util/ServiceConfigurationError;

    .line 1229
    throw v2

    .line 1220
    .end local v0    # "provider":Ljava/util/ServiceLoader$Provider;, "Ljava/util/ServiceLoader$Provider<TT;>;"
    .end local v2    # "e":Ljava/util/ServiceConfigurationError;
    :cond_14
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method private blacklist parse(Ljava/net/URL;)Ljava/util/Iterator;
    .registers 8
    .param p1, "u"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            ")",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1117
    .local p0, "this":Ljava/util/ServiceLoader$LazyClassPathLookupIterator;, "Ljava/util/ServiceLoader<TS;>.LazyClassPathLookupIterator<TT;>;"
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 1119
    .local v0, "names":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :try_start_5
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    .line 1120
    .local v1, "uc":Ljava/net/URLConnection;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/net/URLConnection;->setUseCaches(Z)V

    .line 1121
    invoke-virtual {v1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_11} :catch_45

    .line 1122
    .local v2, "in":Ljava/io/InputStream;
    :try_start_11
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    sget-object v5, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v4, v2, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1d
    .catchall {:try_start_11 .. :try_end_1d} :catchall_39

    .line 1126
    .local v3, "r":Ljava/io/BufferedReader;
    const/4 v4, 0x1

    .line 1127
    .local v4, "lc":I
    :goto_1e
    :try_start_1e
    invoke-direct {p0, p1, v3, v4, v0}, Ljava/util/ServiceLoader$LazyClassPathLookupIterator;->parseLine(Ljava/net/URL;Ljava/io/BufferedReader;ILjava/util/Set;)I

    move-result v5
    :try_end_22
    .catchall {:try_start_1e .. :try_end_22} :catchall_2f

    move v4, v5

    if-ltz v5, :cond_26

    goto :goto_1e

    .line 1128
    .end local v4    # "lc":I
    :cond_26
    :try_start_26
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_29
    .catchall {:try_start_26 .. :try_end_29} :catchall_39

    .end local v3    # "r":Ljava/io/BufferedReader;
    if-eqz v2, :cond_2e

    :try_start_2b
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_2e} :catch_45

    .line 1131
    .end local v1    # "uc":Ljava/net/URLConnection;
    .end local v2    # "in":Ljava/io/InputStream;
    :cond_2e
    goto :goto_51

    .line 1121
    .restart local v1    # "uc":Ljava/net/URLConnection;
    .restart local v2    # "in":Ljava/io/InputStream;
    .restart local v3    # "r":Ljava/io/BufferedReader;
    :catchall_2f
    move-exception v4

    :try_start_30
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_33
    .catchall {:try_start_30 .. :try_end_33} :catchall_34

    goto :goto_38

    :catchall_34
    move-exception v5

    :try_start_35
    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "names":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v1    # "uc":Ljava/net/URLConnection;
    .end local v2    # "in":Ljava/io/InputStream;
    .end local p0    # "this":Ljava/util/ServiceLoader$LazyClassPathLookupIterator;, "Ljava/util/ServiceLoader<TS;>.LazyClassPathLookupIterator<TT;>;"
    .end local p1    # "u":Ljava/net/URL;
    :goto_38
    throw v4
    :try_end_39
    .catchall {:try_start_35 .. :try_end_39} :catchall_39

    .end local v3    # "r":Ljava/io/BufferedReader;
    .restart local v0    # "names":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v1    # "uc":Ljava/net/URLConnection;
    .restart local v2    # "in":Ljava/io/InputStream;
    .restart local p0    # "this":Ljava/util/ServiceLoader$LazyClassPathLookupIterator;, "Ljava/util/ServiceLoader<TS;>.LazyClassPathLookupIterator<TT;>;"
    .restart local p1    # "u":Ljava/net/URL;
    :catchall_39
    move-exception v3

    if-eqz v2, :cond_44

    :try_start_3c
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_3f
    .catchall {:try_start_3c .. :try_end_3f} :catchall_40

    goto :goto_44

    :catchall_40
    move-exception v4

    :try_start_41
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0    # "names":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local p0    # "this":Ljava/util/ServiceLoader$LazyClassPathLookupIterator;, "Ljava/util/ServiceLoader<TS;>.LazyClassPathLookupIterator<TT;>;"
    .end local p1    # "u":Ljava/net/URL;
    :cond_44
    :goto_44
    throw v3
    :try_end_45
    .catch Ljava/io/IOException; {:try_start_41 .. :try_end_45} :catch_45

    .line 1129
    .end local v1    # "uc":Ljava/net/URLConnection;
    .end local v2    # "in":Ljava/io/InputStream;
    .restart local v0    # "names":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local p0    # "this":Ljava/util/ServiceLoader$LazyClassPathLookupIterator;, "Ljava/util/ServiceLoader<TS;>.LazyClassPathLookupIterator<TT;>;"
    .restart local p1    # "u":Ljava/net/URL;
    :catch_45
    move-exception v1

    .line 1130
    .local v1, "x":Ljava/io/IOException;
    iget-object v2, p0, Ljava/util/ServiceLoader$LazyClassPathLookupIterator;->this$0:Ljava/util/ServiceLoader;

    invoke-static {v2}, Ljava/util/ServiceLoader;->-$$Nest$fgetservice(Ljava/util/ServiceLoader;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "Error accessing configuration file"

    invoke-static {v2, v3, v1}, Ljava/util/ServiceLoader;->-$$Nest$smfail(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1132
    .end local v1    # "x":Ljava/io/IOException;
    :goto_51
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    return-object v1
.end method

.method private blacklist parseLine(Ljava/net/URL;Ljava/io/BufferedReader;ILjava/util/Set;)I
    .registers 14
    .param p1, "u"    # Ljava/net/URL;
    .param p2, "r"    # Ljava/io/BufferedReader;
    .param p3, "lc"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            "Ljava/io/BufferedReader;",
            "I",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1086
    .local p0, "this":Ljava/util/ServiceLoader$LazyClassPathLookupIterator;, "Ljava/util/ServiceLoader<TS;>.LazyClassPathLookupIterator<TT;>;"
    .local p4, "names":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    .line 1087
    .local v0, "ln":Ljava/lang/String;
    if-nez v0, :cond_8

    .line 1088
    const/4 v1, -0x1

    return v1

    .line 1090
    :cond_8
    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 1091
    .local v1, "ci":I
    const/4 v2, 0x0

    if-ltz v1, :cond_15

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1092
    :cond_15
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 1093
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    .line 1094
    .local v3, "n":I
    if-eqz v3, :cond_a0

    .line 1095
    const/16 v4, 0x20

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-gez v4, :cond_2f

    const/16 v4, 0x9

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-ltz v4, :cond_3a

    .line 1096
    :cond_2f
    iget-object v4, p0, Ljava/util/ServiceLoader$LazyClassPathLookupIterator;->this$0:Ljava/util/ServiceLoader;

    invoke-static {v4}, Ljava/util/ServiceLoader;->-$$Nest$fgetservice(Ljava/util/ServiceLoader;)Ljava/lang/Class;

    move-result-object v4

    const-string v5, "Illegal configuration-file syntax"

    invoke-static {v4, p1, p3, v5}, Ljava/util/ServiceLoader;->-$$Nest$smfail(Ljava/lang/Class;Ljava/net/URL;ILjava/lang/String;)V

    .line 1097
    :cond_3a
    invoke-virtual {v0, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result v2

    .line 1098
    .local v2, "cp":I
    invoke-static {v2}, Ljava/lang/Character;->isJavaIdentifierStart(I)Z

    move-result v4

    const-string v5, "Illegal provider-class name: "

    if-nez v4, :cond_60

    .line 1099
    iget-object v4, p0, Ljava/util/ServiceLoader$LazyClassPathLookupIterator;->this$0:Ljava/util/ServiceLoader;

    invoke-static {v4}, Ljava/util/ServiceLoader;->-$$Nest$fgetservice(Ljava/util/ServiceLoader;)Ljava/lang/Class;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, p1, p3, v6}, Ljava/util/ServiceLoader;->-$$Nest$smfail(Ljava/lang/Class;Ljava/net/URL;ILjava/lang/String;)V

    .line 1100
    :cond_60
    invoke-static {v2}, Ljava/lang/Character;->charCount(I)I

    move-result v4

    .line 1101
    .local v4, "start":I
    move v6, v4

    .local v6, "i":I
    :goto_65
    if-ge v6, v3, :cond_95

    .line 1102
    invoke-virtual {v0, v6}, Ljava/lang/String;->codePointAt(I)I

    move-result v2

    .line 1103
    invoke-static {v2}, Ljava/lang/Character;->isJavaIdentifierPart(I)Z

    move-result v7

    if-nez v7, :cond_8f

    const/16 v7, 0x2e

    if-eq v2, v7, :cond_8f

    .line 1104
    iget-object v7, p0, Ljava/util/ServiceLoader$LazyClassPathLookupIterator;->this$0:Ljava/util/ServiceLoader;

    invoke-static {v7}, Ljava/util/ServiceLoader;->-$$Nest$fgetservice(Ljava/util/ServiceLoader;)Ljava/lang/Class;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, p1, p3, v8}, Ljava/util/ServiceLoader;->-$$Nest$smfail(Ljava/lang/Class;Ljava/net/URL;ILjava/lang/String;)V

    .line 1101
    :cond_8f
    invoke-static {v2}, Ljava/lang/Character;->charCount(I)I

    move-result v7

    add-int/2addr v6, v7

    goto :goto_65

    .line 1106
    .end local v6    # "i":I
    :cond_95
    iget-object v5, p0, Ljava/util/ServiceLoader$LazyClassPathLookupIterator;->providerNames:Ljava/util/Set;

    invoke-interface {v5, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a0

    .line 1107
    invoke-interface {p4, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1110
    .end local v2    # "cp":I
    .end local v4    # "start":I
    :cond_a0
    add-int/lit8 v2, p3, 0x1

    return v2
.end method


# virtual methods
.method public whitelist test-api hasNext()Z
    .registers 2

    .line 1238
    .local p0, "this":Ljava/util/ServiceLoader$LazyClassPathLookupIterator;, "Ljava/util/ServiceLoader<TS;>.LazyClassPathLookupIterator<TT;>;"
    invoke-direct {p0}, Ljava/util/ServiceLoader$LazyClassPathLookupIterator;->hasNextService()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic whitelist test-api next()Ljava/lang/Object;
    .registers 2

    .line 1065
    .local p0, "this":Ljava/util/ServiceLoader$LazyClassPathLookupIterator;, "Ljava/util/ServiceLoader<TS;>.LazyClassPathLookupIterator<TT;>;"
    invoke-virtual {p0}, Ljava/util/ServiceLoader$LazyClassPathLookupIterator;->next()Ljava/util/ServiceLoader$Provider;

    move-result-object v0

    return-object v0
.end method

.method public blacklist next()Ljava/util/ServiceLoader$Provider;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ServiceLoader$Provider<",
            "TT;>;"
        }
    .end annotation

    .line 1254
    .local p0, "this":Ljava/util/ServiceLoader$LazyClassPathLookupIterator;, "Ljava/util/ServiceLoader<TS;>.LazyClassPathLookupIterator<TT;>;"
    invoke-direct {p0}, Ljava/util/ServiceLoader$LazyClassPathLookupIterator;->nextService()Ljava/util/ServiceLoader$Provider;

    move-result-object v0

    return-object v0
.end method
