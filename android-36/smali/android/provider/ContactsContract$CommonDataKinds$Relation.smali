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
.field public static final whitelist CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/relation"

.field public static final whitelist NAME:Ljava/lang/String; = "data1"

.field public static final whitelist TYPE_ASSISTANT:I = 0x1

.field public static final whitelist TYPE_BROTHER:I = 0x2

.field public static final whitelist TYPE_CHILD:I = 0x3

.field public static final whitelist TYPE_DOMESTIC_PARTNER:I = 0x4

.field public static final whitelist TYPE_FATHER:I = 0x5

.field public static final whitelist TYPE_FRIEND:I = 0x6

.field public static final whitelist TYPE_MANAGER:I = 0x7

.field public static final whitelist TYPE_MOTHER:I = 0x8

.field public static final whitelist TYPE_PARENT:I = 0x9

.field public static final whitelist TYPE_PARTNER:I = 0xa

.field public static final whitelist TYPE_REFERRED_BY:I = 0xb

.field public static final whitelist TYPE_RELATIVE:I = 0xc

.field public static final whitelist TYPE_SISTER:I = 0xd

.field public static final whitelist TYPE_SPOUSE:I = 0xe


# direct methods
.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 7822
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final whitelist getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;
    .registers 5
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "type"    # I
    .param p2, "label"    # Ljava/lang/CharSequence;

    .line 7881
    if-nez p1, :cond_9

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 7882
    return-object p2

    .line 7884
    :cond_9
    invoke-static {p1}, Landroid/provider/ContactsContract$CommonDataKinds$Relation;->getTypeLabelResource(I)I

    move-result v0

    .line 7885
    .local v0, "labelRes":I
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1
.end method

.method public static final whitelist getTypeLabelResource(I)I
    .registers 2
    .param p0, "type"    # I

    .line 7853
    packed-switch p0, :pswitch_data_40

    .line 7870
    const v0, 0x10406fa

    return v0

    .line 7869
    :pswitch_7
    const v0, 0x1040916

    return v0

    .line 7868
    :pswitch_b
    const v0, 0x1040915

    return v0

    .line 7867
    :pswitch_f
    const v0, 0x1040914

    return v0

    .line 7866
    :pswitch_13
    const v0, 0x1040913

    return v0

    .line 7864
    :pswitch_17
    const v0, 0x1040912

    return v0

    .line 7863
    :pswitch_1b
    const v0, 0x1040911

    return v0

    .line 7862
    :pswitch_1f
    const v0, 0x1040910

    return v0

    .line 7861
    :pswitch_23
    const v0, 0x104090f

    return v0

    .line 7860
    :pswitch_27
    const v0, 0x104090e

    return v0

    .line 7859
    :pswitch_2b
    const v0, 0x104090d

    return v0

    .line 7858
    :pswitch_2f
    const v0, 0x104090c

    return v0

    .line 7856
    :pswitch_33
    const v0, 0x104090a

    return v0

    .line 7855
    :pswitch_37
    const v0, 0x1040909

    return v0

    .line 7854
    :pswitch_3b
    const v0, 0x1040908

    return v0

    nop

    :pswitch_data_40
    .packed-switch 0x1
        :pswitch_3b
        :pswitch_37
        :pswitch_33
        :pswitch_2f
        :pswitch_2b
        :pswitch_27
        :pswitch_23
        :pswitch_1f
        :pswitch_1b
        :pswitch_17
        :pswitch_13
        :pswitch_f
        :pswitch_b
        :pswitch_7
    .end packed-switch
.end method
