.class public final Landroid/provider/ContactsContract$CommonDataKinds$Relation;
.super Ljava/lang/Object;
.source "ContactsContract.java"

# interfaces
.implements Landroid/provider/ContactsContract$DataColumnsWithJoins;
.implements Landroid/provider/ContactsContract$CommonDataKinds$CommonColumns;
.implements Landroid/provider/ContactsContract$ContactCounts;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/ContactsContract$CommonDataKinds;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Relation"
.end annotation


# static fields
.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/relation"

.field public static final NAME:Ljava/lang/String; = "data1"

.field public static final TYPE_ASSISTANT:I = 0x1

.field public static final TYPE_BROTHER:I = 0x2

.field public static final TYPE_CHILD:I = 0x3

.field public static final TYPE_DOMESTIC_PARTNER:I = 0x4

.field public static final TYPE_FATHER:I = 0x5

.field public static final TYPE_FRIEND:I = 0x6

.field public static final TYPE_MANAGER:I = 0x7

.field public static final TYPE_MOTHER:I = 0x8

.field public static final TYPE_PARENT:I = 0x9

.field public static final TYPE_PARTNER:I = 0xa

.field public static final TYPE_REFERRED_BY:I = 0xb

.field public static final TYPE_RELATIVE:I = 0xc

.field public static final TYPE_SISTER:I = 0xd

.field public static final TYPE_SPOUSE:I = 0xe


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 6919
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static final getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "type"    # I
    .param p2, "label"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 6978
    if-nez p1, :cond_0

    #@2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@5
    move-result v1

    #@6
    if-eqz v1, :cond_1

    #@8
    .line 6981
    :cond_0
    invoke-static {p1}, Landroid/provider/ContactsContract$CommonDataKinds$Relation;->getTypeLabelResource(I)I

    #@b
    move-result v0

    #@c
    .line 6982
    .local v0, "labelRes":I
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    #@f
    move-result-object v1

    #@10
    return-object v1

    #@11
    .line 6979
    .end local v0    # "labelRes":I
    :cond_1
    return-object p2
.end method

.method public static final getTypeLabelResource(I)I
    .locals 1
    .param p0, "type"    # I

    #@0
    .prologue
    .line 6950
    packed-switch p0, :pswitch_data_0

    #@3
    .line 6967
    const v0, 0x1040269

    #@6
    return v0

    #@7
    .line 6951
    :pswitch_0
    const v0, 0x104026b

    #@a
    return v0

    #@b
    .line 6952
    :pswitch_1
    const v0, 0x104026c

    #@e
    return v0

    #@f
    .line 6953
    :pswitch_2
    const v0, 0x104026d

    #@12
    return v0

    #@13
    .line 6955
    :pswitch_3
    const v0, 0x104026e

    #@16
    return v0

    #@17
    .line 6956
    :pswitch_4
    const v0, 0x104026f

    #@1a
    return v0

    #@1b
    .line 6957
    :pswitch_5
    const v0, 0x1040270

    #@1e
    return v0

    #@1f
    .line 6958
    :pswitch_6
    const v0, 0x1040271

    #@22
    return v0

    #@23
    .line 6959
    :pswitch_7
    const v0, 0x1040272

    #@26
    return v0

    #@27
    .line 6960
    :pswitch_8
    const v0, 0x1040273

    #@2a
    return v0

    #@2b
    .line 6961
    :pswitch_9
    const v0, 0x1040274

    #@2e
    return v0

    #@2f
    .line 6963
    :pswitch_a
    const v0, 0x1040275

    #@32
    return v0

    #@33
    .line 6964
    :pswitch_b
    const v0, 0x1040276

    #@36
    return v0

    #@37
    .line 6965
    :pswitch_c
    const v0, 0x1040277

    #@3a
    return v0

    #@3b
    .line 6966
    :pswitch_d
    const v0, 0x1040278

    #@3e
    return v0

    #@3f
    .line 6950
    nop

    #@40
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method
