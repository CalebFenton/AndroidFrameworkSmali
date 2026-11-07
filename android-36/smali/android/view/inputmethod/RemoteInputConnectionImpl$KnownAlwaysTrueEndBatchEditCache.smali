.class final Landroid/view/inputmethod/RemoteInputConnectionImpl$KnownAlwaysTrueEndBatchEditCache;
.super Ljava/lang/Object;
.source "RemoteInputConnectionImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/inputmethod/RemoteInputConnectionImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "KnownAlwaysTrueEndBatchEditCache"
.end annotation


# static fields
.field private static volatile blacklist sArray:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static volatile blacklist sElement:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static blacklist add(Ljava/lang/Class;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroid/view/inputmethod/InputConnection;",
            ">;)V"
        }
    .end annotation

    .line 146
    .local p0, "klass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/view/inputmethod/InputConnection;>;"
    sget-object v0, Landroid/view/inputmethod/RemoteInputConnectionImpl$KnownAlwaysTrueEndBatchEditCache;->sElement:Ljava/lang/Class;

    if-nez v0, :cond_7

    .line 148
    sput-object p0, Landroid/view/inputmethod/RemoteInputConnectionImpl$KnownAlwaysTrueEndBatchEditCache;->sElement:Ljava/lang/Class;

    .line 149
    return-void

    .line 152
    :cond_7
    sget-object v0, Landroid/view/inputmethod/RemoteInputConnectionImpl$KnownAlwaysTrueEndBatchEditCache;->sArray:[Ljava/lang/Class;

    .line 153
    .local v0, "array":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    if-eqz v0, :cond_d

    array-length v1, v0

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    .line 154
    .local v1, "arraySize":I
    :goto_e
    add-int/lit8 v2, v1, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    .line 155
    .local v2, "newArray":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_13
    if-ge v3, v1, :cond_1c

    .line 156
    aget-object v4, v0, v3

    aput-object v4, v2, v3

    .line 155
    add-int/lit8 v3, v3, 0x1

    goto :goto_13

    .line 158
    .end local v3    # "i":I
    :cond_1c
    aput-object p0, v2, v1

    .line 161
    sput-object v2, Landroid/view/inputmethod/RemoteInputConnectionImpl$KnownAlwaysTrueEndBatchEditCache;->sArray:[Ljava/lang/Class;

    .line 162
    return-void
.end method

.method static blacklist contains(Ljava/lang/Class;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroid/view/inputmethod/InputConnection;",
            ">;)Z"
        }
    .end annotation

    .line 121
    .local p0, "klass":Ljava/lang/Class;, "Ljava/lang/Class<+Landroid/view/inputmethod/InputConnection;>;"
    sget-object v0, Landroid/view/inputmethod/RemoteInputConnectionImpl$KnownAlwaysTrueEndBatchEditCache;->sElement:Ljava/lang/Class;

    const/4 v1, 0x1

    if-ne p0, v0, :cond_6

    .line 122
    return v1

    .line 124
    :cond_6
    sget-object v0, Landroid/view/inputmethod/RemoteInputConnectionImpl$KnownAlwaysTrueEndBatchEditCache;->sArray:[Ljava/lang/Class;

    .line 125
    .local v0, "array":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    const/4 v2, 0x0

    if-nez v0, :cond_c

    .line 126
    return v2

    .line 128
    :cond_c
    array-length v3, v0

    move v4, v2

    :goto_e
    if-ge v4, v3, :cond_18

    aget-object v5, v0, v4

    .line 129
    .local v5, "item":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-ne v5, p0, :cond_15

    .line 130
    return v1

    .line 128
    .end local v5    # "item":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_15
    add-int/lit8 v4, v4, 0x1

    goto :goto_e

    .line 133
    :cond_18
    return v2
.end method
