.class public final Ljava/lang/invoke/MethodHandles$Lookup;
.super Ljava/lang/Object;
.source "MethodHandles.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/lang/invoke/MethodHandles;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Lookup"
.end annotation


# static fields
.field static final synthetic blacklist $assertionsDisabled:Z = false

.field private static final greylist-max-o ALL_MODES:I = 0xf

.field static final blacklist IMPL_LOOKUP:Ljava/lang/invoke/MethodHandles$Lookup;

.field public static final whitelist test-api PACKAGE:I = 0x8

.field public static final whitelist test-api PRIVATE:I = 0x2

.field public static final whitelist test-api PROTECTED:I = 0x4

.field public static final whitelist test-api PUBLIC:I = 0x1

.field static final greylist-max-o PUBLIC_LOOKUP:Ljava/lang/invoke/MethodHandles$Lookup;

.field private static final blacklist STRING_TO_STRING_FACTORY:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/reflect/Constructor<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final greylist-max-o allowedModes:I

.field private final greylist-max-o lookupClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 563
    const-class v0, Ljava/lang/invoke/MethodHandles;

    .line 724
    new-instance v0, Ljava/lang/invoke/MethodHandles$Lookup;

    const-class v1, Ljava/lang/Object;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljava/lang/invoke/MethodHandles$Lookup;-><init>(Ljava/lang/Class;I)V

    sput-object v0, Ljava/lang/invoke/MethodHandles$Lookup;->PUBLIC_LOOKUP:Ljava/lang/invoke/MethodHandles$Lookup;

    .line 727
    new-instance v0, Ljava/lang/invoke/MethodHandles$Lookup;

    const-class v1, Ljava/lang/Object;

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Ljava/lang/invoke/MethodHandles$Lookup;-><init>(Ljava/lang/Class;I)V

    sput-object v0, Ljava/lang/invoke/MethodHandles$Lookup;->IMPL_LOOKUP:Ljava/lang/invoke/MethodHandles$Lookup;

    .line 1101
    invoke-static {}, Ljava/lang/invoke/MethodHandles$Lookup;->buildMapping()Ljava/util/Map;

    move-result-object v0

    sput-object v0, Ljava/lang/invoke/MethodHandles$Lookup;->STRING_TO_STRING_FACTORY:Ljava/util/Map;

    .line 1100
    return-void
.end method

.method constructor greylist-max-o <init>(Ljava/lang/Class;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 653
    .local p1, "lookupClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/16 v0, 0xf

    invoke-direct {p0, p1, v0}, Ljava/lang/invoke/MethodHandles$Lookup;-><init>(Ljava/lang/Class;I)V

    .line 655
    invoke-static {p1, v0}, Ljava/lang/invoke/MethodHandles$Lookup;->checkUnprivilegedlookupClass(Ljava/lang/Class;I)V

    .line 656
    return-void
.end method

.method private constructor greylist <init>(Ljava/lang/Class;I)V
    .registers 3
    .param p2, "allowedModes"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;I)V"
        }
    .end annotation

    .line 658
    .local p1, "lookupClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 659
    iput-object p1, p0, Ljava/lang/invoke/MethodHandles$Lookup;->lookupClass:Ljava/lang/Class;

    .line 660
    iput p2, p0, Ljava/lang/invoke/MethodHandles$Lookup;->allowedModes:I

    .line 661
    return-void
.end method

.method private static blacklist buildMapping()Ljava/util/Map;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/reflect/Constructor<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation

    .line 1108
    :try_start_0
    const-string v0, "java.lang.reflect.Constructor"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_1a5

    .line 1111
    nop

    .line 1113
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 1114
    .local v0, "mapping":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/reflect/Constructor<Ljava/lang/String;>;Ljava/lang/reflect/Method;>;"
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 1119
    .local v1, "signatureAndName":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/List<Ljava/lang/Class<*>;>;Ljava/lang/String;>;"
    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Class;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    const-string v4, "newEmptyString"

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1120
    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, [B

    aput-object v5, v4, v2

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    const-string v6, "newStringFromBytes"

    invoke-interface {v1, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1121
    const/4 v4, 0x2

    new-array v7, v4, [Ljava/lang/Class;

    aput-object v5, v7, v2

    sget-object v8, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v3

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v1, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1122
    new-array v7, v4, [Ljava/lang/Class;

    aput-object v5, v7, v2

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v7, v3

    invoke-static {v7}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v1, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1123
    const/4 v7, 0x3

    new-array v8, v7, [Ljava/lang/Class;

    aput-object v5, v8, v2

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v8, v3

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v8, v4

    .line 1124
    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    .line 1123
    invoke-interface {v1, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1125
    const/4 v8, 0x4

    new-array v9, v8, [Ljava/lang/Class;

    aput-object v5, v9, v2

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v9, v3

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v9, v4

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v9, v7

    .line 1126
    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    .line 1125
    invoke-interface {v1, v9, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1128
    new-array v9, v8, [Ljava/lang/Class;

    aput-object v5, v9, v2

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v9, v3

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v9, v4

    const-class v10, Ljava/lang/String;

    aput-object v10, v9, v7

    .line 1129
    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    .line 1128
    invoke-interface {v1, v9, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1131
    new-array v9, v4, [Ljava/lang/Class;

    aput-object v5, v9, v2

    const-class v10, Ljava/lang/String;

    aput-object v10, v9, v3

    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v9

    invoke-interface {v1, v9, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1132
    new-array v8, v8, [Ljava/lang/Class;

    aput-object v5, v8, v2

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v8, v3

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v8, v4

    const-class v9, Ljava/nio/charset/Charset;

    aput-object v9, v8, v7

    .line 1133
    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    .line 1132
    invoke-interface {v1, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1135
    new-array v8, v4, [Ljava/lang/Class;

    aput-object v5, v8, v2

    const-class v5, Ljava/nio/charset/Charset;

    aput-object v5, v8, v3

    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1136
    new-array v5, v3, [Ljava/lang/Class;

    const-class v6, [C

    aput-object v6, v5, v2

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    const-string v8, "newStringFromChars"

    invoke-interface {v1, v5, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1137
    new-array v5, v7, [Ljava/lang/Class;

    aput-object v6, v5, v2

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v5, v3

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v5, v4

    .line 1138
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    .line 1137
    invoke-interface {v1, v5, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1139
    new-array v5, v7, [Ljava/lang/Class;

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v5, v2

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v5, v3

    aput-object v6, v5, v4

    .line 1140
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    .line 1139
    invoke-interface {v1, v5, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1141
    new-array v5, v3, [Ljava/lang/Class;

    const-class v6, Ljava/lang/String;

    aput-object v6, v5, v2

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    const-string v6, "newStringFromString"

    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1142
    new-array v5, v3, [Ljava/lang/Class;

    const-class v6, Ljava/lang/StringBuffer;

    aput-object v6, v5, v2

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    const-string v6, "newStringFromStringBuffer"

    invoke-interface {v1, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1143
    new-array v5, v7, [Ljava/lang/Class;

    const-class v6, [I

    aput-object v6, v5, v2

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v3

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v4

    .line 1144
    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    .line 1143
    const-string v5, "newStringFromCodePoints"

    invoke-interface {v1, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1145
    new-array v3, v3, [Ljava/lang/Class;

    const-class v4, Ljava/lang/StringBuilder;

    aput-object v4, v3, v2

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    const-string v4, "newStringFromStringBuilder"

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1147
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_144
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1a0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 1148
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/util/List<Ljava/lang/Class<*>;>;Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 1149
    .local v5, "types":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1151
    .local v6, "name":Ljava/lang/String;
    :try_start_15c
    const-class v7, Ljava/lang/String;

    new-array v8, v2, [Ljava/lang/Class;

    .line 1153
    invoke-interface {v5, v8}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [Ljava/lang/Class;

    .line 1152
    invoke-virtual {v7, v8}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v7

    .line 1154
    .local v7, "stringConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Ljava/lang/String;>;"
    const-class v8, Ljava/lang/StringFactory;

    new-array v9, v2, [Ljava/lang/Class;

    .line 1156
    invoke-interface {v5, v9}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/Class;

    .line 1155
    invoke-virtual {v8, v6, v9}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    .line 1157
    .local v8, "factoryMethod":Ljava/lang/reflect/Method;
    invoke-interface {v0, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_180

    .line 1162
    .end local v7    # "stringConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Ljava/lang/String;>;"
    .end local v8    # "factoryMethod":Ljava/lang/reflect/Method;
    nop

    .line 1163
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/util/List<Ljava/lang/Class<*>;>;Ljava/lang/String;>;"
    .end local v5    # "types":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    .end local v6    # "name":Ljava/lang/String;
    goto :goto_144

    .line 1158
    .restart local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/util/List<Ljava/lang/Class<*>;>;Ljava/lang/String;>;"
    .restart local v5    # "types":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    .restart local v6    # "name":Ljava/lang/String;
    .restart local v7    # "stringConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Ljava/lang/String;>;"
    .restart local v8    # "factoryMethod":Ljava/lang/reflect/Method;
    :cond_180
    new-instance v2, Ljava/lang/InternalError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Attempt to remap "

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V

    .end local v0    # "mapping":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/reflect/Constructor<Ljava/lang/String;>;Ljava/lang/reflect/Method;>;"
    .end local v1    # "signatureAndName":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/List<Ljava/lang/Class<*>;>;Ljava/lang/String;>;"
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/util/List<Ljava/lang/Class<*>;>;Ljava/lang/String;>;"
    .end local v5    # "types":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    .end local v6    # "name":Ljava/lang/String;
    throw v2
    :try_end_199
    .catch Ljava/lang/NoSuchMethodException; {:try_start_15c .. :try_end_199} :catch_199

    .line 1160
    .end local v7    # "stringConstructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Ljava/lang/String;>;"
    .end local v8    # "factoryMethod":Ljava/lang/reflect/Method;
    .restart local v0    # "mapping":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/reflect/Constructor<Ljava/lang/String;>;Ljava/lang/reflect/Method;>;"
    .restart local v1    # "signatureAndName":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/List<Ljava/lang/Class<*>;>;Ljava/lang/String;>;"
    .restart local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/util/List<Ljava/lang/Class<*>;>;Ljava/lang/String;>;"
    .restart local v5    # "types":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    .restart local v6    # "name":Ljava/lang/String;
    :catch_199
    move-exception v2

    .line 1161
    .local v2, "nsme":Ljava/lang/NoSuchMethodException;
    new-instance v3, Ljava/lang/InternalError;

    invoke-direct {v3, v2}, Ljava/lang/InternalError;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 1165
    .end local v2    # "nsme":Ljava/lang/NoSuchMethodException;
    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/util/List<Ljava/lang/Class<*>;>;Ljava/lang/String;>;"
    .end local v5    # "types":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Class<*>;>;"
    .end local v6    # "name":Ljava/lang/String;
    :cond_1a0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v2

    return-object v2

    .line 1109
    .end local v0    # "mapping":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/reflect/Constructor<Ljava/lang/String;>;Ljava/lang/reflect/Method;>;"
    .end local v1    # "signatureAndName":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/List<Ljava/lang/Class<*>;>;Ljava/lang/String;>;"
    :catch_1a5
    move-exception v0

    .line 1110
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/InternalError;

    const-string v2, "Failed to initialize Constructor class"

    invoke-direct {v1, v2, v0}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private greylist-max-o checkReturnType(Ljava/lang/reflect/Method;Ljava/lang/invoke/MethodType;)V
    .registers 6
    .param p1, "method"    # Ljava/lang/reflect/Method;
    .param p2, "methodType"    # Ljava/lang/invoke/MethodType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .line 2274
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p2}, Ljava/lang/invoke/MethodType;->rtype()Ljava/lang/Class;

    move-result-object v1

    if-ne v0, v1, :cond_b

    .line 2277
    return-void

    .line 2275
    :cond_b
    new-instance v0, Ljava/lang/NoSuchMethodException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist checkSpecialCaller(Ljava/lang/Class;Ljava/lang/Class;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 2256
    .local p1, "specialCaller":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "refc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz p2, :cond_10

    .line 2257
    invoke-virtual {p2}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 2258
    invoke-virtual {p2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    .line 2259
    .local v0, "isInterfaceLookup":Z
    :goto_11
    invoke-direct {p0}, Ljava/lang/invoke/MethodHandles$Lookup;->hasPrivateAccess()Z

    move-result v1

    if-eqz v1, :cond_20

    invoke-virtual {p0}, Ljava/lang/invoke/MethodHandles$Lookup;->lookupClass()Ljava/lang/Class;

    move-result-object v1

    if-eq p1, v1, :cond_1f

    if-eqz v0, :cond_20

    .line 2263
    :cond_1f
    return-void

    .line 2260
    :cond_20
    new-instance v1, Ljava/lang/IllegalAccessException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "no private access for invokespecial : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", from"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static greylist-max-o checkUnprivilegedlookupClass(Ljava/lang/Class;I)V
    .registers 6
    .param p1, "allowedModes"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;I)V"
        }
    .end annotation

    .line 730
    .local p0, "lookupClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 731
    .local v0, "name":Ljava/lang/String;
    const-string v1, "java.lang.invoke."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "illegal lookupClass: "

    if-nez v1, :cond_a7

    .line 738
    const/16 v1, 0xf

    if-ne p1, v1, :cond_a6

    .line 739
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    const-class v3, Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    if-ne v1, v3, :cond_a6

    .line 740
    const-string v1, "java."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_76

    .line 741
    const-string v1, "java.io.ObjectStreamClass"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_76

    .line 742
    const-string v1, "java.util.concurrent."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_76

    .line 743
    const-string v1, "java.lang.Daemons$FinalizerWatchdogDaemon"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_76

    .line 744
    const-string v1, "java.lang.runtime.ObjectMethods"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_76

    .line 745
    const-string v1, "java.lang.Thread"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_76

    .line 746
    const-string v1, "java.util.HashMap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_76

    .line 747
    const-string v1, "java.util.HashSet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_76

    .line 748
    const-string v1, "java.util.WeakHashMap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_76

    .line 749
    const-string v1, "java.lang.runtime.SwitchBootstraps"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_76

    .line 750
    const-string v1, "java.util.stream."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_90

    :cond_76
    nop

    .line 751
    const-string v1, "sun."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a6

    .line 752
    const-string v1, "sun.invoke."

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a6

    .line 753
    const-string v1, "sun.reflect.ReflectionFactory"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_90

    goto :goto_a6

    .line 754
    :cond_90
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/invoke/MethodHandleStatics;->newIllegalArgumentException(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 757
    :cond_a6
    :goto_a6
    return-void

    .line 732
    :cond_a7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/invoke/MethodHandleStatics;->newIllegalArgumentException(Ljava/lang/String;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method private greylist-max-o commonFieldChecks(Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/Class;ZZ)V
    .registers 9
    .param p1, "field"    # Ljava/lang/reflect/Field;
    .param p4, "isStatic"    # Z
    .param p5, "performAccessChecks"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Field;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;ZZ)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 1679
    .local p2, "refc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p3, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v0

    .line 1680
    .local v0, "modifiers":I
    if-eqz p5, :cond_11

    .line 1681
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p2, v1, v0, v2}, Ljava/lang/invoke/MethodHandles$Lookup;->checkAccess(Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/String;)V

    .line 1683
    :cond_11
    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v1

    if-eq v1, p4, :cond_47

    .line 1684
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Field "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1685
    if-eqz p4, :cond_31

    const-string v2, "not "

    goto :goto_33

    :cond_31
    const-string v2, ""

    :goto_33
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "static"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1686
    .local v1, "reason":Ljava/lang/String;
    new-instance v2, Ljava/lang/IllegalAccessException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1688
    .end local v1    # "reason":Ljava/lang/String;
    :cond_47
    return-void
.end method

.method private static greylist-max-o createMethodHandle(Ljava/lang/reflect/Method;ILjava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;
    .registers 6
    .param p0, "method"    # Ljava/lang/reflect/Method;
    .param p1, "handleKind"    # I
    .param p2, "methodType"    # Ljava/lang/invoke/MethodType;

    .line 880
    new-instance v0, Ljava/lang/invoke/MethodHandleImpl;

    invoke-virtual {p0}, Ljava/lang/reflect/Method;->getArtMethod()J

    move-result-wide v1

    invoke-direct {v0, v1, v2, p1, p2}, Ljava/lang/invoke/MethodHandleImpl;-><init>(JILjava/lang/invoke/MethodType;)V

    .line 881
    .local v0, "mh":Ljava/lang/invoke/MethodHandle;
    invoke-virtual {p0}, Ljava/lang/reflect/Method;->isVarArgs()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 882
    new-instance v1, Ljava/lang/invoke/Transformers$VarargsCollector;

    invoke-direct {v1, v0}, Ljava/lang/invoke/Transformers$VarargsCollector;-><init>(Ljava/lang/invoke/MethodHandle;)V

    return-object v1

    .line 884
    :cond_15
    return-object v0
.end method

.method private greylist-max-o createMethodHandleForConstructor(Ljava/lang/reflect/Constructor;)Ljava/lang/invoke/MethodHandle;
    .registers 9
    .param p1, "constructor"    # Ljava/lang/reflect/Constructor;

    .line 1175
    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    .line 1176
    .local v0, "refc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    nop

    .line 1177
    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v1

    .line 1179
    .local v1, "constructorType":Ljava/lang/invoke/MethodType;
    const-class v2, Ljava/lang/String;

    if-ne v0, v2, :cond_20

    .line 1183
    new-instance v2, Ljava/lang/invoke/MethodHandleImpl;

    invoke-static {p1}, Ljava/lang/invoke/MethodHandles$Lookup;->findStringFactoryMethod(Ljava/lang/reflect/Constructor;)Ljava/lang/reflect/Method;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/reflect/Method;->getArtMethod()J

    move-result-wide v3

    const/4 v5, 0x3

    invoke-direct {v2, v3, v4, v5, v1}, Ljava/lang/invoke/MethodHandleImpl;-><init>(JILjava/lang/invoke/MethodType;)V

    .local v2, "mh":Ljava/lang/invoke/MethodHandle;
    goto :goto_34

    .line 1188
    .end local v2    # "mh":Ljava/lang/invoke/MethodHandle;
    :cond_20
    invoke-static {v1}, Ljava/lang/invoke/MethodHandles$Lookup;->initMethodType(Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodType;

    move-result-object v2

    .line 1189
    .local v2, "initType":Ljava/lang/invoke/MethodType;
    new-instance v3, Ljava/lang/invoke/MethodHandleImpl;

    .line 1190
    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getArtMethod()J

    move-result-wide v4

    const/4 v6, 0x2

    invoke-direct {v3, v4, v5, v6, v2}, Ljava/lang/invoke/MethodHandleImpl;-><init>(JILjava/lang/invoke/MethodType;)V

    .line 1191
    .local v3, "initHandle":Ljava/lang/invoke/MethodHandle;
    new-instance v4, Ljava/lang/invoke/Transformers$Construct;

    invoke-direct {v4, v3, v1}, Ljava/lang/invoke/Transformers$Construct;-><init>(Ljava/lang/invoke/MethodHandle;Ljava/lang/invoke/MethodType;)V

    move-object v2, v4

    .line 1194
    .end local v3    # "initHandle":Ljava/lang/invoke/MethodHandle;
    .local v2, "mh":Ljava/lang/invoke/MethodHandle;
    :goto_34
    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->isVarArgs()Z

    move-result v3

    if-eqz v3, :cond_40

    .line 1195
    new-instance v3, Ljava/lang/invoke/Transformers$VarargsCollector;

    invoke-direct {v3, v2}, Ljava/lang/invoke/Transformers$VarargsCollector;-><init>(Ljava/lang/invoke/MethodHandle;)V

    move-object v2, v3

    .line 1197
    :cond_40
    return-object v2
.end method

.method private greylist-max-o findAccessor(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;I)Ljava/lang/invoke/MethodHandle;
    .registers 11
    .param p2, "name"    # Ljava/lang/String;
    .param p4, "kind"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;I)",
            "Ljava/lang/invoke/MethodHandle;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 1514
    .local p1, "refc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p3, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0, p1, p2, p3}, Ljava/lang/invoke/MethodHandles$Lookup;->findFieldOfType(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 1515
    .local v1, "field":Ljava/lang/reflect/Field;
    const/4 v5, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p3

    move v4, p4

    .end local p1    # "refc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local p3    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local p4    # "kind":I
    .local v2, "refc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v3, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v4, "kind":I
    invoke-direct/range {v0 .. v5}, Ljava/lang/invoke/MethodHandles$Lookup;->findAccessor(Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/Class;IZ)Ljava/lang/invoke/MethodHandle;

    move-result-object p1

    return-object p1
.end method

.method private greylist-max-o findAccessor(Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/Class;IZ)Ljava/lang/invoke/MethodHandle;
    .registers 16
    .param p1, "field"    # Ljava/lang/reflect/Field;
    .param p4, "kind"    # I
    .param p5, "performAccessChecks"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Field;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;IZ)",
            "Ljava/lang/invoke/MethodHandle;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 1521
    .local p2, "refc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p3, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/16 v0, 0x9

    const/16 v1, 0xb

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq p4, v0, :cond_d

    if-ne p4, v1, :cond_b

    goto :goto_d

    :cond_b
    move v0, v2

    goto :goto_e

    :cond_d
    :goto_d
    move v0, v3

    .line 1522
    .local v0, "isSetterKind":Z
    :goto_e
    const/16 v4, 0xa

    if-eq p4, v4, :cond_17

    if-ne p4, v1, :cond_15

    goto :goto_17

    :cond_15
    move v1, v2

    goto :goto_18

    :cond_17
    :goto_17
    move v1, v3

    :goto_18
    move v8, v1

    .line 1523
    .local v8, "isStaticKind":Z
    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move v9, p5

    .end local p1    # "field":Ljava/lang/reflect/Field;
    .end local p2    # "refc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local p3    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local p5    # "performAccessChecks":Z
    .local v5, "field":Ljava/lang/reflect/Field;
    .local v6, "refc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v7, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v9, "performAccessChecks":Z
    invoke-direct/range {v4 .. v9}, Ljava/lang/invoke/MethodHandles$Lookup;->commonFieldChecks(Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/Class;ZZ)V

    .line 1524
    if-eqz v9, :cond_4f

    .line 1525
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result p1

    .line 1526
    .local p1, "modifiers":I
    if-eqz v0, :cond_4f

    invoke-static {p1}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result p2

    if-nez p2, :cond_30

    goto :goto_4f

    .line 1527
    :cond_30
    new-instance p2, Ljava/lang/IllegalAccessException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Field "

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string p5, " is final"

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 1532
    .end local p1    # "modifiers":I
    :cond_4f
    :goto_4f
    packed-switch p4, :pswitch_data_8e

    .line 1546
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Invalid kind "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1537
    :pswitch_6b
    sget-object p1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-static {p1, v7}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object p1

    .line 1538
    .local p1, "methodType":Ljava/lang/invoke/MethodType;
    goto :goto_87

    .line 1534
    .end local p1    # "methodType":Ljava/lang/invoke/MethodType;
    :pswitch_72
    invoke-static {v7}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object p1

    .line 1535
    .restart local p1    # "methodType":Ljava/lang/invoke/MethodType;
    goto :goto_87

    .line 1543
    .end local p1    # "methodType":Ljava/lang/invoke/MethodType;
    :pswitch_77
    sget-object p1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    new-array p2, v3, [Ljava/lang/Class;

    aput-object v7, p2, v2

    invoke-static {p1, v6, p2}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object p1

    .line 1544
    .restart local p1    # "methodType":Ljava/lang/invoke/MethodType;
    goto :goto_87

    .line 1540
    .end local p1    # "methodType":Ljava/lang/invoke/MethodType;
    :pswitch_82
    invoke-static {v7, v6}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object p1

    .line 1541
    .restart local p1    # "methodType":Ljava/lang/invoke/MethodType;
    nop

    .line 1548
    :goto_87
    new-instance p2, Ljava/lang/invoke/MethodHandleImpl;

    invoke-direct {p2, v5, p4, p1}, Ljava/lang/invoke/MethodHandleImpl;-><init>(Ljava/lang/reflect/Field;ILjava/lang/invoke/MethodType;)V

    return-object p2

    nop

    :pswitch_data_8e
    .packed-switch 0x8
        :pswitch_82
        :pswitch_77
        :pswitch_72
        :pswitch_6b
    .end packed-switch
.end method

.method private greylist-max-o findFieldOfType(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Field;
    .registers 7
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;
        }
    .end annotation

    .line 1653
    .local p1, "refc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p3, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v0, 0x0

    .line 1656
    .local v0, "field":Ljava/lang/reflect/Field;
    move-object v1, p1

    .local v1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_2
    if-eqz v1, :cond_10

    .line 1658
    :try_start_4
    invoke-virtual {v1, p2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2
    :try_end_8
    .catch Ljava/lang/NoSuchFieldException; {:try_start_4 .. :try_end_8} :catch_a

    move-object v0, v2

    .line 1659
    goto :goto_10

    .line 1660
    :catch_a
    move-exception v2

    .line 1656
    invoke-virtual {v1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_2

    .line 1664
    .end local v1    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_10
    :goto_10
    if-nez v0, :cond_16

    .line 1666
    invoke-virtual {p1, p2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 1669
    :cond_16
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    .line 1670
    .local v1, "fieldType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-ne v1, p3, :cond_1d

    .line 1673
    return-object v0

    .line 1671
    :cond_1d
    new-instance v2, Ljava/lang/NoSuchFieldException;

    invoke-direct {v2, p2}, Ljava/lang/NoSuchFieldException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private greylist-max-o findSpecial(Ljava/lang/reflect/Method;Ljava/lang/invoke/MethodType;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/invoke/MethodHandle;
    .registers 8
    .param p1, "method"    # Ljava/lang/reflect/Method;
    .param p2, "type"    # Ljava/lang/invoke/MethodType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/invoke/MethodType;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/invoke/MethodHandle;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 1457
    .local p3, "refc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p4, "specialCaller":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    if-nez v0, :cond_81

    .line 1461
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPrivate(I)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_4d

    .line 1469
    invoke-virtual {p0}, Ljava/lang/invoke/MethodHandles$Lookup;->lookupClass()Ljava/lang/Class;

    move-result-object v0

    if-ne p3, v0, :cond_2a

    .line 1475
    new-array v0, v1, [Ljava/lang/Class;

    aput-object p3, v0, v2

    invoke-virtual {p2, v2, v0}, Ljava/lang/invoke/MethodType;->insertParameterTypes(I[Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v0

    .line 1476
    .local v0, "handleType":Ljava/lang/invoke/MethodType;
    const/4 v1, 0x2

    invoke-static {p1, v1, v0}, Ljava/lang/invoke/MethodHandles$Lookup;->createMethodHandle(Ljava/lang/reflect/Method;ILjava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object v1

    return-object v1

    .line 1470
    .end local v0    # "handleType":Ljava/lang/invoke/MethodType;
    :cond_2a
    new-instance v0, Ljava/lang/IllegalAccessException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no private access for invokespecial : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", from"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1482
    :cond_4d
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_64

    .line 1487
    new-array v0, v1, [Ljava/lang/Class;

    aput-object p4, v0, v2

    invoke-virtual {p2, v2, v0}, Ljava/lang/invoke/MethodType;->insertParameterTypes(I[Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v0

    .line 1488
    .restart local v0    # "handleType":Ljava/lang/invoke/MethodType;
    invoke-static {p1, v1, v0}, Ljava/lang/invoke/MethodHandles$Lookup;->createMethodHandle(Ljava/lang/reflect/Method;ILjava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object v1

    return-object v1

    .line 1483
    .end local v0    # "handleType":Ljava/lang/invoke/MethodType;
    :cond_64
    new-instance v0, Ljava/lang/IllegalAccessException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "is not assignable from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1458
    :cond_81
    new-instance v0, Ljava/lang/IllegalAccessException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "expected a non-static method:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist findStringFactoryMethod(Ljava/lang/reflect/Constructor;)Ljava/lang/reflect/Method;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Constructor<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .line 1169
    .local p0, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Ljava/lang/String;>;"
    sget-object v0, Ljava/lang/invoke/MethodHandles$Lookup;->STRING_TO_STRING_FACTORY:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No mapping for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    return-object v0
.end method

.method private greylist-max-o findVirtualForMH(Ljava/lang/String;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/invoke/MethodType;

    .line 861
    const-string v0, "invoke"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 862
    invoke-static {p2}, Ljava/lang/invoke/MethodHandles;->invoker(Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object v0

    return-object v0

    .line 863
    :cond_d
    const-string v0, "invokeExact"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 864
    invoke-static {p2}, Ljava/lang/invoke/MethodHandles;->exactInvoker(Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object v0

    return-object v0

    .line 865
    :cond_1a
    const/4 v0, 0x0

    return-object v0
.end method

.method private greylist-max-o findVirtualForVH(Ljava/lang/String;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/invoke/MethodType;

    .line 871
    :try_start_0
    invoke-static {p1}, Ljava/lang/invoke/VarHandle$AccessMode;->valueFromMethodName(Ljava/lang/String;)Ljava/lang/invoke/VarHandle$AccessMode;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_4} :catch_a

    .line 874
    .local v0, "accessMode":Ljava/lang/invoke/VarHandle$AccessMode;
    nop

    .line 875
    invoke-static {v0, p2}, Ljava/lang/invoke/MethodHandles;->varHandleInvoker(Ljava/lang/invoke/VarHandle$AccessMode;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object v1

    return-object v1

    .line 872
    .end local v0    # "accessMode":Ljava/lang/invoke/VarHandle$AccessMode;
    :catch_a
    move-exception v0

    .line 873
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const/4 v1, 0x0

    return-object v1
.end method

.method private static greylist-max-o fixmods(I)I
    .registers 2
    .param p0, "mods"    # I

    .line 608
    and-int/lit8 p0, p0, 0x7

    .line 609
    if-eqz p0, :cond_6

    move v0, p0

    goto :goto_8

    :cond_6
    const/16 v0, 0x8

    :goto_8
    return v0
.end method

.method private greylist-max-o hasPrivateAccess()Z
    .registers 2

    .line 2172
    iget v0, p0, Ljava/lang/invoke/MethodHandles$Lookup;->allowedModes:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method private static greylist-max-o initMethodType(Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodType;
    .registers 6
    .param p0, "constructorType"    # Ljava/lang/invoke/MethodType;

    .line 1205
    nop

    .line 1209
    invoke-virtual {p0}, Ljava/lang/invoke/MethodType;->ptypes()[Ljava/lang/Class;

    move-result-object v0

    array-length v0, v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    new-array v0, v0, [Ljava/lang/Class;

    .line 1210
    .local v0, "initPtypes":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    invoke-virtual {p0}, Ljava/lang/invoke/MethodType;->rtype()Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v0, v3

    .line 1211
    invoke-virtual {p0}, Ljava/lang/invoke/MethodType;->ptypes()[Ljava/lang/Class;

    move-result-object v2

    .line 1212
    invoke-virtual {p0}, Ljava/lang/invoke/MethodType;->ptypes()[Ljava/lang/Class;

    move-result-object v4

    array-length v4, v4

    .line 1211
    invoke-static {v2, v3, v0, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1215
    sget-object v1, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v1

    return-object v1
.end method

.method private blacklist lookupClassOrNull()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 1343
    iget-object v0, p0, Ljava/lang/invoke/MethodHandles$Lookup;->lookupClass:Ljava/lang/Class;

    return-object v0
.end method

.method private blacklist makeAccessException(Ljava/lang/Class;)Ljava/lang/IllegalAccessException;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/IllegalAccessException;"
        }
    .end annotation

    .line 1226
    .local p1, "targetClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "access violation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1227
    .local v0, "message":Ljava/lang/String;
    invoke-static {}, Ljava/lang/invoke/MethodHandles;->publicLookup()Ljava/lang/invoke/MethodHandles$Lookup;

    move-result-object v1

    if-ne p0, v1, :cond_2d

    .line 1228
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", from public Lookup"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_48

    .line 1233
    :cond_2d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/invoke/MethodHandles$Lookup;->lookupClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1240
    :goto_48
    new-instance v1, Ljava/lang/IllegalAccessException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    return-object v1
.end method

.method private greylist-max-o throwMakeAccessException(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 5
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "from"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 2267
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/invoke/MethodHandles$Lookup;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2268
    if-eqz p2, :cond_34

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2269
    :cond_34
    new-instance v0, Ljava/lang/IllegalAccessException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public blacklist accessClass(Ljava/lang/Class;)Ljava/lang/Class;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 1319
    .local p1, "targetClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0, p1}, Ljava/lang/invoke/MethodHandles$Lookup;->isClassAccessible(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1324
    return-object p1

    .line 1320
    :cond_7
    invoke-direct {p0, p1}, Ljava/lang/invoke/MethodHandles$Lookup;->makeAccessException(Ljava/lang/Class;)Ljava/lang/IllegalAccessException;

    move-result-object v0

    throw v0
.end method

.method greylist-max-o accessFailedMessage(Ljava/lang/Class;Ljava/lang/Class;I)Ljava/lang/String;
    .registers 9
    .param p3, "mods"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;I)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 2223
    .local p1, "refc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "defc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p2}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1a

    if-eq p2, p1, :cond_18

    .line 2225
    invoke-virtual {p1}, Ljava/lang/Class;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v0

    if-eqz v0, :cond_1a

    :cond_18
    move v0, v1

    goto :goto_1b

    :cond_1a
    move v0, v2

    .line 2226
    .local v0, "classOK":Z
    :goto_1b
    if-nez v0, :cond_3e

    iget v3, p0, Ljava/lang/invoke/MethodHandles$Lookup;->allowedModes:I

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_3e

    .line 2227
    invoke-virtual {p0}, Ljava/lang/invoke/MethodHandles$Lookup;->lookupClass()Ljava/lang/Class;

    move-result-object v3

    const/16 v4, 0xf

    invoke-static {p2, v3, v4}, Lsun/invoke/util/VerifyAccess;->isClassAccessible(Ljava/lang/Class;Ljava/lang/Class;I)Z

    move-result v3

    if-eqz v3, :cond_3c

    if-eq p2, p1, :cond_3b

    .line 2229
    invoke-virtual {p0}, Ljava/lang/invoke/MethodHandles$Lookup;->lookupClass()Ljava/lang/Class;

    move-result-object v3

    invoke-static {p1, v3, v4}, Lsun/invoke/util/VerifyAccess;->isClassAccessible(Ljava/lang/Class;Ljava/lang/Class;I)Z

    move-result v3

    if-eqz v3, :cond_3c

    :cond_3b
    goto :goto_3d

    :cond_3c
    move v1, v2

    :goto_3d
    move v0, v1

    .line 2231
    :cond_3e
    if-nez v0, :cond_43

    .line 2232
    const-string v1, "class is not public"

    return-object v1

    .line 2233
    :cond_43
    invoke-static {p3}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v1

    if-eqz v1, :cond_4c

    .line 2234
    const-string v1, "access to public member failed"

    return-object v1

    .line 2235
    :cond_4c
    invoke-static {p3}, Ljava/lang/reflect/Modifier;->isPrivate(I)Z

    move-result v1

    if-eqz v1, :cond_55

    .line 2236
    const-string v1, "member is private"

    return-object v1

    .line 2237
    :cond_55
    invoke-static {p3}, Ljava/lang/reflect/Modifier;->isProtected(I)Z

    move-result v1

    if-eqz v1, :cond_5e

    .line 2238
    const-string v1, "member is protected"

    return-object v1

    .line 2239
    :cond_5e
    const-string v1, "member is private to package"

    return-object v1
.end method

.method public whitelist test-api bind(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;
    .registers 8
    .param p1, "receiver"    # Ljava/lang/Object;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/invoke/MethodType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 1866
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0, p2, p3}, Ljava/lang/invoke/MethodHandles$Lookup;->findVirtual(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object v0

    .line 1867
    .local v0, "handle":Ljava/lang/invoke/MethodHandle;
    invoke-virtual {v0, p1}, Ljava/lang/invoke/MethodHandle;->bindTo(Ljava/lang/Object;)Ljava/lang/invoke/MethodHandle;

    move-result-object v1

    .line 1868
    .local v1, "adapter":Ljava/lang/invoke/MethodHandle;
    invoke-virtual {v1}, Ljava/lang/invoke/MethodHandle;->type()Ljava/lang/invoke/MethodType;

    move-result-object v2

    .line 1869
    .local v2, "adapterType":Ljava/lang/invoke/MethodType;
    invoke-virtual {v0}, Ljava/lang/invoke/MethodHandle;->isVarargsCollector()Z

    move-result v3

    if-eqz v3, :cond_25

    .line 1870
    nop

    .line 1871
    invoke-virtual {v2}, Ljava/lang/invoke/MethodType;->parameterCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Ljava/lang/invoke/MethodType;->parameterType(I)Ljava/lang/Class;

    move-result-object v3

    .line 1870
    invoke-virtual {v1, v3}, Ljava/lang/invoke/MethodHandle;->asVarargsCollector(Ljava/lang/Class;)Ljava/lang/invoke/MethodHandle;

    move-result-object v1

    .line 1874
    :cond_25
    return-object v1
.end method

.method greylist-max-o checkAccess(Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/String;)V
    .registers 8
    .param p3, "mods"    # I
    .param p4, "methName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 2178
    .local p1, "refc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "defc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget v0, p0, Ljava/lang/invoke/MethodHandles$Lookup;->allowedModes:I

    .line 2180
    .local v0, "allowedModes":I
    invoke-static {p3}, Ljava/lang/reflect/Modifier;->isProtected(I)Z

    move-result v1

    if-eqz v1, :cond_1c

    const-class v1, Ljava/lang/Object;

    if-ne p2, v1, :cond_1c

    .line 2182
    const-string v1, "clone"

    invoke-virtual {v1, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 2183
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 2197
    xor-int/lit8 p3, p3, 0x5

    .line 2200
    :cond_1c
    invoke-static {p3}, Ljava/lang/reflect/Modifier;->isProtected(I)Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-static {p3}, Ljava/lang/reflect/Modifier;->isConstructor(I)Z

    move-result v1

    if-eqz v1, :cond_2a

    .line 2202
    xor-int/lit8 p3, p3, 0x4

    .line 2205
    :cond_2a
    invoke-static {p3}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v1

    if-eqz v1, :cond_3d

    invoke-virtual {p1}, Ljava/lang/Class;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v1

    if-eqz v1, :cond_3d

    if-eqz v0, :cond_3d

    .line 2206
    return-void

    .line 2207
    :cond_3d
    invoke-static {p3}, Ljava/lang/invoke/MethodHandles$Lookup;->fixmods(I)I

    move-result v1

    .line 2208
    .local v1, "requestedModes":I
    and-int v2, v1, v0

    if-eqz v2, :cond_50

    .line 2209
    invoke-virtual {p0}, Ljava/lang/invoke/MethodHandles$Lookup;->lookupClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {p1, p2, p3, v2, v0}, Lsun/invoke/util/VerifyAccess;->isMemberAccessible(Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/Class;I)Z

    move-result v2

    if-eqz v2, :cond_63

    .line 2210
    return-void

    .line 2213
    :cond_50
    and-int/lit8 v2, v1, 0x4

    if-eqz v2, :cond_63

    and-int/lit8 v2, v0, 0x8

    if-eqz v2, :cond_63

    .line 2214
    invoke-virtual {p0}, Ljava/lang/invoke/MethodHandles$Lookup;->lookupClass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {p2, v2}, Lsun/invoke/util/VerifyAccess;->isSamePackage(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_63

    .line 2215
    return-void

    .line 2218
    :cond_63
    invoke-virtual {p0, p1, p2, p3}, Ljava/lang/invoke/MethodHandles$Lookup;->accessFailedMessage(Ljava/lang/Class;Ljava/lang/Class;I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, p0}, Ljava/lang/invoke/MethodHandles$Lookup;->throwMakeAccessException(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2219
    return-void
.end method

.method public blacklist findClass(Ljava/lang/String;)Ljava/lang/Class;
    .registers 4
    .param p1, "targetName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 1094
    iget-object v0, p0, Ljava/lang/invoke/MethodHandles$Lookup;->lookupClass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 1095
    .local v0, "targetClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p0, v0}, Ljava/lang/invoke/MethodHandles$Lookup;->accessClass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    return-object v1
.end method

.method public whitelist test-api findConstructor(Ljava/lang/Class;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;
    .registers 7
    .param p2, "type"    # Ljava/lang/invoke/MethodType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/invoke/MethodType;",
            ")",
            "Ljava/lang/invoke/MethodHandle;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 1054
    .local p1, "refc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-nez v0, :cond_4b

    .line 1058
    invoke-virtual {p2}, Ljava/lang/invoke/MethodType;->ptypes()[Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 1059
    .local v0, "constructor":Ljava/lang/reflect/Constructor;
    if-eqz v0, :cond_24

    .line 1063
    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getModifiers()I

    move-result v2

    .line 1064
    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getName()Ljava/lang/String;

    move-result-object v3

    .line 1063
    invoke-virtual {p0, p1, v1, v2, v3}, Ljava/lang/invoke/MethodHandles$Lookup;->checkAccess(Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/String;)V

    .line 1066
    invoke-direct {p0, v0}, Ljava/lang/invoke/MethodHandles$Lookup;->createMethodHandleForConstructor(Ljava/lang/reflect/Constructor;)Ljava/lang/invoke/MethodHandle;

    move-result-object v1

    return-object v1

    .line 1060
    :cond_24
    new-instance v1, Ljava/lang/NoSuchMethodException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No constructor for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1061
    invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " matching "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1055
    .end local v0    # "constructor":Ljava/lang/reflect/Constructor;
    :cond_4b
    new-instance v0, Ljava/lang/NoSuchMethodException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no constructor for array class: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api findGetter(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/invoke/MethodHandle;
    .registers 5
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/invoke/MethodHandle;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 1509
    .local p1, "refc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p3, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/16 v0, 0x8

    invoke-direct {p0, p1, p2, p3, v0}, Ljava/lang/invoke/MethodHandles$Lookup;->findAccessor(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;I)Ljava/lang/invoke/MethodHandle;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api findSetter(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/invoke/MethodHandle;
    .registers 5
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/invoke/MethodHandle;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 1569
    .local p1, "refc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p3, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/16 v0, 0x9

    invoke-direct {p0, p1, p2, p3, v0}, Ljava/lang/invoke/MethodHandles$Lookup;->findAccessor(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;I)Ljava/lang/invoke/MethodHandle;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api findSpecial(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/invoke/MethodType;Ljava/lang/Class;)Ljava/lang/invoke/MethodHandle;
    .registers 8
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/invoke/MethodType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/invoke/MethodType;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/invoke/MethodHandle;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 1421
    .local p1, "refc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p4, "specialCaller":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz p4, :cond_54

    .line 1425
    if-eqz p3, :cond_4c

    .line 1429
    if-eqz p2, :cond_44

    .line 1433
    if-eqz p1, :cond_3c

    .line 1440
    invoke-direct {p0, p4, p1}, Ljava/lang/invoke/MethodHandles$Lookup;->checkSpecialCaller(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 1445
    const-string v0, "<"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_23

    .line 1449
    invoke-virtual {p3}, Ljava/lang/invoke/MethodType;->ptypes()[Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 1450
    .local v0, "method":Ljava/lang/reflect/Method;
    invoke-direct {p0, v0, p3}, Ljava/lang/invoke/MethodHandles$Lookup;->checkReturnType(Ljava/lang/reflect/Method;Ljava/lang/invoke/MethodType;)V

    .line 1451
    invoke-direct {p0, v0, p3, p1, p4}, Ljava/lang/invoke/MethodHandles$Lookup;->findSpecial(Ljava/lang/reflect/Method;Ljava/lang/invoke/MethodType;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/invoke/MethodHandle;

    move-result-object v1

    return-object v1

    .line 1446
    .end local v0    # "method":Ljava/lang/reflect/Method;
    :cond_23
    new-instance v0, Ljava/lang/NoSuchMethodException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a valid method name."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1434
    :cond_3c
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "ref == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1430
    :cond_44
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "name == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1426
    :cond_4c
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "type == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1422
    :cond_54
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "specialCaller == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api findStatic(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;
    .registers 9
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/invoke/MethodType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/invoke/MethodType;",
            ")",
            "Ljava/lang/invoke/MethodHandle;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 849
    .local p1, "refc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p3}, Ljava/lang/invoke/MethodType;->ptypes()[Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 850
    .local v0, "method":Ljava/lang/reflect/Method;
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v1

    .line 851
    .local v1, "modifiers":I
    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 854
    invoke-direct {p0, v0, p3}, Ljava/lang/invoke/MethodHandles$Lookup;->checkReturnType(Ljava/lang/reflect/Method;Ljava/lang/invoke/MethodType;)V

    .line 855
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, p1, v2, v1, v3}, Ljava/lang/invoke/MethodHandles$Lookup;->checkAccess(Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/String;)V

    .line 856
    const/4 v2, 0x3

    invoke-static {v0, v2, p3}, Ljava/lang/invoke/MethodHandles$Lookup;->createMethodHandle(Ljava/lang/reflect/Method;ILjava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object v2

    return-object v2

    .line 852
    :cond_26
    new-instance v2, Ljava/lang/IllegalAccessException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Method"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not static"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public whitelist test-api findStaticGetter(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/invoke/MethodHandle;
    .registers 5
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/invoke/MethodHandle;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 1711
    .local p1, "refc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p3, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/16 v0, 0xa

    invoke-direct {p0, p1, p2, p3, v0}, Ljava/lang/invoke/MethodHandles$Lookup;->findAccessor(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;I)Ljava/lang/invoke/MethodHandle;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api findStaticSetter(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/invoke/MethodHandle;
    .registers 5
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/invoke/MethodHandle;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 1734
    .local p1, "refc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p3, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/16 v0, 0xb

    invoke-direct {p0, p1, p2, p3, v0}, Ljava/lang/invoke/MethodHandles$Lookup;->findAccessor(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;I)Ljava/lang/invoke/MethodHandle;

    move-result-object v0

    return-object v0
.end method

.method public whitelist test-api findStaticVarHandle(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/invoke/VarHandle;
    .registers 12
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/invoke/VarHandle;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 1809
    .local p1, "decl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p3, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0, p1, p2, p3}, Ljava/lang/invoke/MethodHandles$Lookup;->findFieldOfType(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 1810
    .local v1, "field":Ljava/lang/reflect/Field;
    const/4 v6, 0x1

    .line 1811
    .local v6, "isStatic":Z
    const/4 v7, 0x1

    .line 1812
    .local v7, "performAccessChecks":Z
    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p3

    .end local p1    # "decl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local p3    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v2, "decl":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v3, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct/range {v0 .. v5}, Ljava/lang/invoke/MethodHandles$Lookup;->commonFieldChecks(Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/Class;ZZ)V

    .line 1813
    invoke-static {v1}, Ljava/lang/invoke/StaticFieldVarHandle;->create(Ljava/lang/reflect/Field;)Ljava/lang/invoke/StaticFieldVarHandle;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api findVarHandle(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/invoke/VarHandle;
    .registers 12
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/invoke/VarHandle;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchFieldException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 1642
    .local p1, "recv":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p3, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct {p0, p1, p2, p3}, Ljava/lang/invoke/MethodHandles$Lookup;->findFieldOfType(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 1643
    .local v1, "field":Ljava/lang/reflect/Field;
    const/4 v6, 0x0

    .line 1644
    .local v6, "isStatic":Z
    const/4 v7, 0x1

    .line 1645
    .local v7, "performAccessChecks":Z
    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p3

    .end local p1    # "recv":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local p3    # "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v2, "recv":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local v3, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-direct/range {v0 .. v5}, Ljava/lang/invoke/MethodHandles$Lookup;->commonFieldChecks(Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/Class;ZZ)V

    .line 1646
    invoke-static {v1}, Ljava/lang/invoke/FieldVarHandle;->create(Ljava/lang/reflect/Field;)Ljava/lang/invoke/FieldVarHandle;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api findVirtual(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;
    .registers 9
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/invoke/MethodType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "Ljava/lang/invoke/MethodType;",
            ")",
            "Ljava/lang/invoke/MethodHandle;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 962
    .local p1, "refc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Ljava/lang/invoke/MethodHandle;

    if-ne p1, v0, :cond_c

    .line 963
    invoke-direct {p0, p2, p3}, Ljava/lang/invoke/MethodHandles$Lookup;->findVirtualForMH(Ljava/lang/String;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object v0

    .line 964
    .local v0, "mh":Ljava/lang/invoke/MethodHandle;
    if-eqz v0, :cond_b

    .line 965
    return-object v0

    .line 964
    .end local v0    # "mh":Ljava/lang/invoke/MethodHandle;
    :cond_b
    goto :goto_17

    .line 967
    :cond_c
    const-class v0, Ljava/lang/invoke/VarHandle;

    if-ne p1, v0, :cond_17

    .line 969
    invoke-direct {p0, p2, p3}, Ljava/lang/invoke/MethodHandles$Lookup;->findVirtualForVH(Ljava/lang/String;Ljava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object v0

    .line 970
    .restart local v0    # "mh":Ljava/lang/invoke/MethodHandle;
    if-eqz v0, :cond_18

    .line 971
    return-object v0

    .line 967
    .end local v0    # "mh":Ljava/lang/invoke/MethodHandle;
    :cond_17
    :goto_17
    nop

    .line 975
    :cond_18
    invoke-virtual {p3}, Ljava/lang/invoke/MethodType;->ptypes()[Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Ljava/lang/Class;->getInstanceMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 976
    .local v0, "method":Ljava/lang/reflect/Method;
    if-nez v0, :cond_7a

    .line 983
    :try_start_22
    invoke-virtual {p3}, Ljava/lang/invoke/MethodType;->ptypes()[Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 984
    .local v1, "m":Ljava/lang/reflect/Method;
    invoke-virtual {v1}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v2

    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v2

    if-eqz v2, :cond_53

    .line 985
    new-instance v2, Ljava/lang/IllegalAccessException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Method"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is static"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalAccessException;-><init>(Ljava/lang/String;)V

    .end local v0    # "method":Ljava/lang/reflect/Method;
    .end local p0    # "this":Ljava/lang/invoke/MethodHandles$Lookup;
    .end local p1    # "refc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local p2    # "name":Ljava/lang/String;
    .end local p3    # "type":Ljava/lang/invoke/MethodType;
    throw v2
    :try_end_53
    .catch Ljava/lang/NoSuchMethodException; {:try_start_22 .. :try_end_53} :catch_54

    .line 988
    .end local v1    # "m":Ljava/lang/reflect/Method;
    .restart local v0    # "method":Ljava/lang/reflect/Method;
    .restart local p0    # "this":Ljava/lang/invoke/MethodHandles$Lookup;
    .restart local p1    # "refc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .restart local p2    # "name":Ljava/lang/String;
    .restart local p3    # "type":Ljava/lang/invoke/MethodType;
    :cond_53
    goto :goto_55

    .line 987
    :catch_54
    move-exception v1

    .line 990
    :goto_55
    new-instance v1, Ljava/lang/NoSuchMethodException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p3}, Ljava/lang/invoke/MethodType;->ptypes()[Ljava/lang/Class;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 992
    :cond_7a
    invoke-direct {p0, v0, p3}, Ljava/lang/invoke/MethodHandles$Lookup;->checkReturnType(Ljava/lang/reflect/Method;Ljava/lang/invoke/MethodType;)V

    .line 995
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v2

    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, p1, v1, v2, v3}, Ljava/lang/invoke/MethodHandles$Lookup;->checkAccess(Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/String;)V

    .line 998
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p3, v2, v1}, Ljava/lang/invoke/MethodType;->insertParameterTypes(I[Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v1

    .line 999
    .local v1, "handleType":Ljava/lang/invoke/MethodType;
    const/4 v2, 0x0

    .line 1002
    .local v2, "kind":I
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->isInterface()Z

    move-result v3

    if-eqz v3, :cond_a2

    .line 1003
    const/4 v2, 0x4

    .line 1005
    :cond_a2
    invoke-static {v0, v2, v1}, Ljava/lang/invoke/MethodHandles$Lookup;->createMethodHandle(Ljava/lang/reflect/Method;ILjava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object v3

    return-object v3
.end method

.method public whitelist test-api in(Ljava/lang/Class;)Ljava/lang/invoke/MethodHandles$Lookup;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/invoke/MethodHandles$Lookup;"
        }
    .end annotation

    .line 688
    .local p1, "requestedLookupClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 693
    iget-object v0, p0, Ljava/lang/invoke/MethodHandles$Lookup;->lookupClass:Ljava/lang/Class;

    if-ne p1, v0, :cond_8

    .line 694
    return-object p0

    .line 695
    :cond_8
    iget v0, p0, Ljava/lang/invoke/MethodHandles$Lookup;->allowedModes:I

    and-int/lit8 v0, v0, 0xb

    .line 696
    .local v0, "newModes":I
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_1a

    iget-object v1, p0, Ljava/lang/invoke/MethodHandles$Lookup;->lookupClass:Ljava/lang/Class;

    .line 697
    invoke-static {v1, p1}, Lsun/invoke/util/VerifyAccess;->isSamePackage(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_1a

    .line 698
    and-int/lit8 v0, v0, -0xb

    .line 701
    :cond_1a
    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_28

    iget-object v1, p0, Ljava/lang/invoke/MethodHandles$Lookup;->lookupClass:Ljava/lang/Class;

    .line 702
    invoke-static {v1, p1}, Lsun/invoke/util/VerifyAccess;->isSamePackageMember(Ljava/lang/Class;Ljava/lang/Class;)Z

    move-result v1

    if-nez v1, :cond_28

    .line 703
    and-int/lit8 v0, v0, -0x3

    .line 705
    :cond_28
    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_37

    iget-object v1, p0, Ljava/lang/invoke/MethodHandles$Lookup;->lookupClass:Ljava/lang/Class;

    iget v2, p0, Ljava/lang/invoke/MethodHandles$Lookup;->allowedModes:I

    .line 706
    invoke-static {p1, v1, v2}, Lsun/invoke/util/VerifyAccess;->isClassAccessible(Ljava/lang/Class;Ljava/lang/Class;I)Z

    move-result v1

    if-nez v1, :cond_37

    .line 709
    const/4 v0, 0x0

    .line 711
    :cond_37
    invoke-static {p1, v0}, Ljava/lang/invoke/MethodHandles$Lookup;->checkUnprivilegedlookupClass(Ljava/lang/Class;I)V

    .line 712
    new-instance v1, Ljava/lang/invoke/MethodHandles$Lookup;

    invoke-direct {v1, p1, v0}, Ljava/lang/invoke/MethodHandles$Lookup;-><init>(Ljava/lang/Class;I)V

    return-object v1
.end method

.method blacklist isClassAccessible(Ljava/lang/Class;)Z
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 1328
    .local p1, "refc":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1329
    invoke-direct {p0}, Ljava/lang/invoke/MethodHandles$Lookup;->lookupClassOrNull()Ljava/lang/Class;

    move-result-object v0

    .line 1330
    .local v0, "caller":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v1, p1

    .line 1331
    .local v1, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_8
    invoke-virtual {v1}, Ljava/lang/Class;->isArray()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 1332
    invoke-virtual {v1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    goto :goto_8

    .line 1336
    :cond_13
    if-eqz v0, :cond_20

    iget v2, p0, Ljava/lang/invoke/MethodHandles$Lookup;->allowedModes:I

    invoke-static {v1, v0, v2}, Lsun/invoke/util/VerifyAccess;->isClassAccessible(Ljava/lang/Class;Ljava/lang/Class;I)Z

    move-result v2

    if-eqz v2, :cond_1e

    goto :goto_20

    :cond_1e
    const/4 v2, 0x0

    goto :goto_21

    :cond_20
    :goto_20
    const/4 v2, 0x1

    :goto_21
    return v2
.end method

.method public whitelist test-api lookupClass()Ljava/lang/Class;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 622
    iget-object v0, p0, Ljava/lang/invoke/MethodHandles$Lookup;->lookupClass:Ljava/lang/Class;

    return-object v0
.end method

.method public whitelist test-api lookupModes()I
    .registers 2

    .line 644
    iget v0, p0, Ljava/lang/invoke/MethodHandles$Lookup;->allowedModes:I

    and-int/lit8 v0, v0, 0xf

    return v0
.end method

.method public whitelist test-api revealDirect(Ljava/lang/invoke/MethodHandle;)Ljava/lang/invoke/MethodHandleInfo;
    .registers 8
    .param p1, "target"    # Ljava/lang/invoke/MethodHandle;

    .line 2158
    invoke-static {p1}, Ljava/lang/invoke/MethodHandles;->-$$Nest$smgetMethodHandleImpl(Ljava/lang/invoke/MethodHandle;)Ljava/lang/invoke/MethodHandleImpl;

    move-result-object v0

    .line 2159
    .local v0, "directTarget":Ljava/lang/invoke/MethodHandleImpl;
    invoke-virtual {v0}, Ljava/lang/invoke/MethodHandleImpl;->reveal()Ljava/lang/invoke/MethodHandleInfo;

    move-result-object v1

    .line 2162
    .local v1, "info":Ljava/lang/invoke/MethodHandleInfo;
    :try_start_8
    invoke-virtual {p0}, Ljava/lang/invoke/MethodHandles$Lookup;->lookupClass()Ljava/lang/Class;

    move-result-object v2

    invoke-interface {v1}, Ljava/lang/invoke/MethodHandleInfo;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v3

    invoke-interface {v1}, Ljava/lang/invoke/MethodHandleInfo;->getModifiers()I

    move-result v4

    .line 2163
    invoke-interface {v1}, Ljava/lang/invoke/MethodHandleInfo;->getName()Ljava/lang/String;

    move-result-object v5

    .line 2162
    invoke-virtual {p0, v2, v3, v4, v5}, Ljava/lang/invoke/MethodHandles$Lookup;->checkAccess(Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/String;)V
    :try_end_1b
    .catch Ljava/lang/IllegalAccessException; {:try_start_8 .. :try_end_1b} :catch_1d

    .line 2166
    nop

    .line 2168
    return-object v1

    .line 2164
    :catch_1d
    move-exception v2

    .line 2165
    .local v2, "exception":Ljava/lang/IllegalAccessException;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Unable to access memeber."

    invoke-direct {v3, v4, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 789
    iget-object v0, p0, Ljava/lang/invoke/MethodHandles$Lookup;->lookupClass:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 790
    .local v0, "cname":Ljava/lang/String;
    iget v1, p0, Ljava/lang/invoke/MethodHandles$Lookup;->allowedModes:I

    sparse-switch v1, :sswitch_data_7c

    .line 805
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Ljava/lang/invoke/MethodHandles$Lookup;->allowedModes:I

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 806
    goto :goto_7a

    .line 800
    :sswitch_29
    return-object v0

    .line 798
    :sswitch_2a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/private"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 796
    :sswitch_3e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/package"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 794
    :sswitch_52
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/public"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 792
    :sswitch_66
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/noaccess"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 807
    :goto_7a
    return-object v0

    nop

    :sswitch_data_7c
    .sparse-switch
        0x0 -> :sswitch_66
        0x1 -> :sswitch_52
        0x9 -> :sswitch_3e
        0xb -> :sswitch_2a
        0xf -> :sswitch_29
    .end sparse-switch
.end method

.method public whitelist test-api unreflect(Ljava/lang/reflect/Method;)Ljava/lang/invoke/MethodHandle;
    .registers 7
    .param p1, "m"    # Ljava/lang/reflect/Method;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 1904
    if-eqz p1, :cond_4a

    .line 1908
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    .line 1909
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    .line 1908
    invoke-static {v0, v1}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v0

    .line 1912
    .local v0, "methodType":Ljava/lang/invoke/MethodType;
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->isAccessible()Z

    move-result v1

    if-nez v1, :cond_27

    .line 1913
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v3

    .line 1914
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v4

    .line 1913
    invoke-virtual {p0, v1, v2, v3, v4}, Ljava/lang/invoke/MethodHandles$Lookup;->checkAccess(Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/String;)V

    .line 1917
    :cond_27
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getModifiers()I

    move-result v1

    invoke-static {v1}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v1

    if-eqz v1, :cond_37

    .line 1918
    const/4 v1, 0x3

    invoke-static {p1, v1, v0}, Ljava/lang/invoke/MethodHandles$Lookup;->createMethodHandle(Ljava/lang/reflect/Method;ILjava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object v1

    return-object v1

    .line 1920
    :cond_37
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {v0, v3, v1}, Ljava/lang/invoke/MethodType;->insertParameterTypes(I[Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v0

    .line 1921
    invoke-static {p1, v3, v0}, Ljava/lang/invoke/MethodHandles$Lookup;->createMethodHandle(Ljava/lang/reflect/Method;ILjava/lang/invoke/MethodType;)Ljava/lang/invoke/MethodHandle;

    move-result-object v1

    return-object v1

    .line 1905
    .end local v0    # "methodType":Ljava/lang/invoke/MethodType;
    :cond_4a
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "m == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api unreflectConstructor(Ljava/lang/reflect/Constructor;)Ljava/lang/invoke/MethodHandle;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Constructor<",
            "*>;)",
            "Ljava/lang/invoke/MethodHandle;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 1999
    .local p1, "c":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    if-eqz p1, :cond_20

    .line 2003
    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->isAccessible()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 2004
    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getModifiers()I

    move-result v2

    .line 2005
    invoke-virtual {p1}, Ljava/lang/reflect/Constructor;->getName()Ljava/lang/String;

    move-result-object v3

    .line 2004
    invoke-virtual {p0, v0, v1, v2, v3}, Ljava/lang/invoke/MethodHandles$Lookup;->checkAccess(Ljava/lang/Class;Ljava/lang/Class;ILjava/lang/String;)V

    .line 2008
    :cond_1b
    invoke-direct {p0, p1}, Ljava/lang/invoke/MethodHandles$Lookup;->createMethodHandleForConstructor(Ljava/lang/reflect/Constructor;)Ljava/lang/invoke/MethodHandle;

    move-result-object v0

    return-object v0

    .line 2000
    :cond_20
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "c == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api unreflectGetter(Ljava/lang/reflect/Field;)Ljava/lang/invoke/MethodHandle;
    .registers 8
    .param p1, "f"    # Ljava/lang/reflect/Field;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 2030
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v3

    .line 2031
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    if-eqz v0, :cond_15

    const/16 v0, 0xa

    goto :goto_17

    :cond_15
    const/16 v0, 0x8

    :goto_17
    move v4, v0

    .line 2032
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->isAccessible()Z

    move-result v0

    .line 2030
    xor-int/lit8 v5, v0, 0x1

    move-object v0, p0

    move-object v1, p1

    .end local p1    # "f":Ljava/lang/reflect/Field;
    .local v1, "f":Ljava/lang/reflect/Field;
    invoke-direct/range {v0 .. v5}, Ljava/lang/invoke/MethodHandles$Lookup;->findAccessor(Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/Class;IZ)Ljava/lang/invoke/MethodHandle;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api unreflectSetter(Ljava/lang/reflect/Field;)Ljava/lang/invoke/MethodHandle;
    .registers 8
    .param p1, "f"    # Ljava/lang/reflect/Field;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 2054
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v3

    .line 2055
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v0

    if-eqz v0, :cond_15

    const/16 v0, 0xb

    goto :goto_17

    :cond_15
    const/16 v0, 0x9

    :goto_17
    move v4, v0

    .line 2056
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->isAccessible()Z

    move-result v0

    .line 2054
    xor-int/lit8 v5, v0, 0x1

    move-object v0, p0

    move-object v1, p1

    .end local p1    # "f":Ljava/lang/reflect/Field;
    .local v1, "f":Ljava/lang/reflect/Field;
    invoke-direct/range {v0 .. v5}, Ljava/lang/invoke/MethodHandles$Lookup;->findAccessor(Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/Class;IZ)Ljava/lang/invoke/MethodHandle;

    move-result-object p1

    return-object p1
.end method

.method public whitelist test-api unreflectSpecial(Ljava/lang/reflect/Method;Ljava/lang/Class;)Ljava/lang/invoke/MethodHandle;
    .registers 5
    .param p1, "m"    # Ljava/lang/reflect/Method;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/invoke/MethodHandle;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 1955
    .local p2, "specialCaller":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-eqz p1, :cond_2b

    .line 1959
    if-eqz p2, :cond_23

    .line 1963
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->isAccessible()Z

    move-result v0

    if-nez v0, :cond_e

    .line 1966
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Ljava/lang/invoke/MethodHandles$Lookup;->checkSpecialCaller(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 1969
    :cond_e
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v0

    .line 1970
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v1

    .line 1969
    invoke-static {v0, v1}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v0

    .line 1971
    .local v0, "methodType":Ljava/lang/invoke/MethodType;
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1, p2}, Ljava/lang/invoke/MethodHandles$Lookup;->findSpecial(Ljava/lang/reflect/Method;Ljava/lang/invoke/MethodType;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/invoke/MethodHandle;

    move-result-object v1

    return-object v1

    .line 1960
    .end local v0    # "methodType":Ljava/lang/invoke/MethodType;
    :cond_23
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "specialCaller == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1956
    :cond_2b
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "m == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist test-api unreflectVarHandle(Ljava/lang/reflect/Field;)Ljava/lang/invoke/VarHandle;
    .registers 9
    .param p1, "f"    # Ljava/lang/reflect/Field;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 2132
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v0

    invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v5

    .line 2133
    .local v5, "isStatic":Z
    const/4 v0, 0x1

    .line 2134
    .local v0, "performAccessChecks":Z
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v4

    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, p1

    .end local p1    # "f":Ljava/lang/reflect/Field;
    .local v2, "f":Ljava/lang/reflect/Field;
    invoke-direct/range {v1 .. v6}, Ljava/lang/invoke/MethodHandles$Lookup;->commonFieldChecks(Ljava/lang/reflect/Field;Ljava/lang/Class;Ljava/lang/Class;ZZ)V

    .line 2135
    if-eqz v5, :cond_1e

    invoke-static {v2}, Ljava/lang/invoke/StaticFieldVarHandle;->create(Ljava/lang/reflect/Field;)Ljava/lang/invoke/StaticFieldVarHandle;

    move-result-object p1

    goto :goto_22

    :cond_1e
    invoke-static {v2}, Ljava/lang/invoke/FieldVarHandle;->create(Ljava/lang/reflect/Field;)Ljava/lang/invoke/FieldVarHandle;

    move-result-object p1

    :goto_22
    return-object p1
.end method
