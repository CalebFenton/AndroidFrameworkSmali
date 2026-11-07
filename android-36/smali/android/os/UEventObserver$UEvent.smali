.class public final Landroid/os/UEventObserver$UEvent;
.super Ljava/lang/Object;
.source "UEventObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/UEventObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UEvent"
.end annotation


# instance fields
.field private final greylist-max-o mMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor greylist-max-o <init>(Ljava/lang/String;)V
    .registers 9
    .param p1, "message"    # Ljava/lang/String;

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/os/UEventObserver$UEvent;->mMap:Ljava/util/HashMap;

    .line 136
    const/4 v0, 0x0

    .line 137
    .local v0, "offset":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 139
    .local v1, "length":I
    :goto_f
    if-ge v0, v1, :cond_35

    .line 140
    const/16 v2, 0x3d

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    .line 141
    .local v2, "equals":I
    const/4 v3, 0x0

    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 142
    .local v3, "at":I
    if-gez v3, :cond_1f

    goto :goto_35

    .line 144
    :cond_1f
    if-le v2, v0, :cond_32

    if-ge v2, v3, :cond_32

    .line 146
    iget-object v4, p0, Landroid/os/UEventObserver$UEvent;->mMap:Ljava/util/HashMap;

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v6, v2, 0x1

    .line 147
    invoke-virtual {p1, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 146
    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    :cond_32
    add-int/lit8 v0, v3, 0x1

    .line 151
    .end local v2    # "equals":I
    .end local v3    # "at":I
    goto :goto_f

    .line 152
    :cond_35
    :goto_35
    return-void
.end method


# virtual methods
.method public greylist get(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "key"    # Ljava/lang/String;

    .line 156
    iget-object v0, p0, Landroid/os/UEventObserver$UEvent;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public greylist get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "defaultValue"    # Ljava/lang/String;

    .line 161
    iget-object v0, p0, Landroid/os/UEventObserver$UEvent;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 162
    .local v0, "result":Ljava/lang/String;
    if-nez v0, :cond_c

    move-object v1, p2

    goto :goto_d

    :cond_c
    move-object v1, v0

    :goto_d
    return-object v1
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 2

    .line 166
    iget-object v0, p0, Landroid/os/UEventObserver$UEvent;->mMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
