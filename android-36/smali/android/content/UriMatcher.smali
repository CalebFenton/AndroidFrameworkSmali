.class public Landroid/content/UriMatcher;
.super Ljava/lang/Object;
.source "UriMatcher.java"


# static fields
.field private static final greylist-max-o EXACT:I = 0x0

.field public static final whitelist NO_MATCH:I = -0x1

.field private static final greylist-max-o NUMBER:I = 0x1

.field private static final greylist-max-o TEXT:I = 0x2


# instance fields
.field private greylist mChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/UriMatcher;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mCode:I

.field private final greylist mText:Ljava/lang/String;

.field private final greylist-max-o mWhich:I


# direct methods
.method public constructor whitelist <init>(I)V
    .registers 3
    .param p1, "code"    # I

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 133
    iput p1, p0, Landroid/content/UriMatcher;->mCode:I

    .line 134
    const/4 v0, -0x1

    iput v0, p0, Landroid/content/UriMatcher;->mWhich:I

    .line 135
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/content/UriMatcher;->mChildren:Ljava/util/ArrayList;

    .line 136
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/UriMatcher;->mText:Ljava/lang/String;

    .line 137
    return-void
.end method

.method private constructor blacklist <init>(ILjava/lang/String;)V
    .registers 4
    .param p1, "which"    # I
    .param p2, "text"    # Ljava/lang/String;

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    const/4 v0, -0x1

    iput v0, p0, Landroid/content/UriMatcher;->mCode:I

    .line 142
    iput p1, p0, Landroid/content/UriMatcher;->mWhich:I

    .line 143
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/content/UriMatcher;->mChildren:Ljava/util/ArrayList;

    .line 144
    iput-object p2, p0, Landroid/content/UriMatcher;->mText:Ljava/lang/String;

    .line 145
    return-void
.end method

.method private static blacklist createChild(Ljava/lang/String;)Landroid/content/UriMatcher;
    .registers 6
    .param p0, "token"    # Ljava/lang/String;

    .line 204
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "*"

    const-string v4, "#"

    sparse-switch v0, :sswitch_data_36

    :cond_d
    goto :goto_1e

    :sswitch_e
    invoke-virtual {p0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    move v0, v2

    goto :goto_1f

    :sswitch_16
    invoke-virtual {p0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    move v0, v1

    goto :goto_1f

    :goto_1e
    const/4 v0, -0x1

    :goto_1f
    packed-switch v0, :pswitch_data_40

    .line 210
    new-instance v0, Landroid/content/UriMatcher;

    invoke-direct {v0, v1, p0}, Landroid/content/UriMatcher;-><init>(ILjava/lang/String;)V

    return-object v0

    .line 208
    :pswitch_28
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, 0x2

    invoke-direct {v0, v1, v3}, Landroid/content/UriMatcher;-><init>(ILjava/lang/String;)V

    return-object v0

    .line 206
    :pswitch_2f
    new-instance v0, Landroid/content/UriMatcher;

    invoke-direct {v0, v2, v4}, Landroid/content/UriMatcher;-><init>(ILjava/lang/String;)V

    return-object v0

    nop

    :sswitch_data_36
    .sparse-switch
        0x23 -> :sswitch_16
        0x2a -> :sswitch_e
    .end sparse-switch

    :pswitch_data_40
    .packed-switch 0x0
        :pswitch_2f
        :pswitch_28
    .end packed-switch
.end method


# virtual methods
.method public whitelist addURI(Ljava/lang/String;Ljava/lang/String;I)V
    .registers 14
    .param p1, "authority"    # Ljava/lang/String;
    .param p2, "path"    # Ljava/lang/String;
    .param p3, "code"    # I

    .line 164
    if-ltz p3, :cond_5b

    .line 168
    const/4 v0, 0x0

    .line 169
    .local v0, "tokens":[Ljava/lang/String;
    const/4 v1, 0x0

    if-eqz p2, :cond_20

    .line 170
    move-object v2, p2

    .line 172
    .local v2, "newPath":Ljava/lang/String;
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x1

    if-le v3, v4, :cond_1a

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v5, 0x2f

    if-ne v3, v5, :cond_1a

    .line 173
    invoke-virtual {p2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 175
    :cond_1a
    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 178
    .end local v2    # "newPath":Ljava/lang/String;
    :cond_20
    if-eqz v0, :cond_23

    array-length v1, v0

    .line 179
    .local v1, "numTokens":I
    :cond_23
    move-object v2, p0

    .line 180
    .local v2, "node":Landroid/content/UriMatcher;
    const/4 v3, -0x1

    .local v3, "i":I
    :goto_25
    if-ge v3, v1, :cond_58

    .line 181
    if-gez v3, :cond_2b

    move-object v4, p1

    goto :goto_2d

    :cond_2b
    aget-object v4, v0, v3

    .line 182
    .local v4, "token":Ljava/lang/String;
    :goto_2d
    iget-object v5, v2, Landroid/content/UriMatcher;->mChildren:Ljava/util/ArrayList;

    .line 183
    .local v5, "children":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/UriMatcher;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 186
    .local v6, "numChildren":I
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_34
    if-ge v7, v6, :cond_49

    .line 187
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/UriMatcher;

    .line 188
    .local v8, "child":Landroid/content/UriMatcher;
    iget-object v9, v8, Landroid/content/UriMatcher;->mText:Ljava/lang/String;

    invoke-virtual {v4, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_46

    .line 189
    move-object v2, v8

    .line 190
    goto :goto_49

    .line 186
    :cond_46
    add-int/lit8 v7, v7, 0x1

    goto :goto_34

    .line 193
    .end local v8    # "child":Landroid/content/UriMatcher;
    :cond_49
    :goto_49
    if-ne v7, v6, :cond_55

    .line 195
    invoke-static {v4}, Landroid/content/UriMatcher;->createChild(Ljava/lang/String;)Landroid/content/UriMatcher;

    move-result-object v8

    .line 196
    .restart local v8    # "child":Landroid/content/UriMatcher;
    iget-object v9, v2, Landroid/content/UriMatcher;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 197
    move-object v2, v8

    .line 180
    .end local v4    # "token":Ljava/lang/String;
    .end local v5    # "children":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/UriMatcher;>;"
    .end local v6    # "numChildren":I
    .end local v7    # "j":I
    .end local v8    # "child":Landroid/content/UriMatcher;
    :cond_55
    add-int/lit8 v3, v3, 0x1

    goto :goto_25

    .line 200
    .end local v3    # "i":I
    :cond_58
    iput p3, v2, Landroid/content/UriMatcher;->mCode:I

    .line 201
    return-void

    .line 165
    .end local v0    # "tokens":[Ljava/lang/String;
    .end local v1    # "numTokens":I
    .end local v2    # "node":Landroid/content/UriMatcher;
    :cond_5b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is invalid: it must be positive"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist match(Landroid/net/Uri;)I
    .registers 15
    .param p1, "uri"    # Landroid/net/Uri;

    .line 224
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v0

    .line 225
    .local v0, "pathSegments":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 227
    .local v1, "li":I
    move-object v2, p0

    .line 229
    .local v2, "node":Landroid/content/UriMatcher;
    if-nez v1, :cond_14

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_14

    .line 230
    iget v3, p0, Landroid/content/UriMatcher;->mCode:I

    return v3

    .line 233
    :cond_14
    const/4 v3, -0x1

    .local v3, "i":I
    :goto_15
    if-ge v3, v1, :cond_6e

    .line 234
    if-gez v3, :cond_1e

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v4

    goto :goto_24

    :cond_1e
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 235
    .local v4, "u":Ljava/lang/String;
    :goto_24
    iget-object v5, v2, Landroid/content/UriMatcher;->mChildren:Ljava/util/ArrayList;

    .line 236
    .local v5, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/UriMatcher;>;"
    if-nez v5, :cond_29

    .line 237
    goto :goto_6e

    .line 239
    :cond_29
    const/4 v2, 0x0

    .line 240
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 241
    .local v6, "lj":I
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_2f
    if-ge v7, v6, :cond_67

    .line 242
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/UriMatcher;

    .line 244
    .local v8, "n":Landroid/content/UriMatcher;
    iget v9, v8, Landroid/content/UriMatcher;->mWhich:I

    packed-switch v9, :pswitch_data_72

    goto :goto_61

    .line 261
    :pswitch_3d
    move-object v2, v8

    goto :goto_61

    .line 251
    :pswitch_3f
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v9

    .line 252
    .local v9, "lk":I
    const/4 v10, 0x0

    .local v10, "k":I
    :goto_44
    if-ge v10, v9, :cond_56

    .line 253
    invoke-virtual {v4, v10}, Ljava/lang/String;->charAt(I)C

    move-result v11

    .line 254
    .local v11, "c":C
    const/16 v12, 0x30

    if-lt v11, v12, :cond_61

    const/16 v12, 0x39

    if-le v11, v12, :cond_53

    .line 255
    goto :goto_61

    .line 252
    .end local v11    # "c":C
    :cond_53
    add-int/lit8 v10, v10, 0x1

    goto :goto_44

    .line 258
    .end local v10    # "k":I
    :cond_56
    move-object v2, v8

    .line 259
    goto :goto_61

    .line 246
    .end local v9    # "lk":I
    :pswitch_58
    iget-object v9, v8, Landroid/content/UriMatcher;->mText:Ljava/lang/String;

    invoke-virtual {v9, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_61

    .line 247
    move-object v2, v8

    .line 264
    :cond_61
    :goto_61
    if-eqz v2, :cond_64

    .line 265
    goto :goto_67

    .line 241
    .end local v8    # "n":Landroid/content/UriMatcher;
    :cond_64
    add-int/lit8 v7, v7, 0x1

    goto :goto_2f

    .line 268
    .end local v7    # "j":I
    :cond_67
    :goto_67
    if-nez v2, :cond_6b

    .line 269
    const/4 v7, -0x1

    return v7

    .line 233
    .end local v4    # "u":Ljava/lang/String;
    .end local v5    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/UriMatcher;>;"
    .end local v6    # "lj":I
    :cond_6b
    add-int/lit8 v3, v3, 0x1

    goto :goto_15

    .line 273
    .end local v3    # "i":I
    :cond_6e
    :goto_6e
    iget v3, v2, Landroid/content/UriMatcher;->mCode:I

    return v3

    nop

    :pswitch_data_72
    .packed-switch 0x0
        :pswitch_58
        :pswitch_3f
        :pswitch_3d
    .end packed-switch
.end method
