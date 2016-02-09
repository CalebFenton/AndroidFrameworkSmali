.class public final Landroid/provider/ContactsContract$CommonDataKinds$Im;
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
    name = "Im"
.end annotation


# static fields
.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/im"

.field public static final CUSTOM_PROTOCOL:Ljava/lang/String; = "data6"

.field public static final PROTOCOL:Ljava/lang/String; = "data5"

.field public static final PROTOCOL_AIM:I = 0x0

.field public static final PROTOCOL_CUSTOM:I = -0x1

.field public static final PROTOCOL_GOOGLE_TALK:I = 0x5

.field public static final PROTOCOL_ICQ:I = 0x6

.field public static final PROTOCOL_JABBER:I = 0x7

.field public static final PROTOCOL_MSN:I = 0x1

.field public static final PROTOCOL_NETMEETING:I = 0x8

.field public static final PROTOCOL_QQ:I = 0x4

.field public static final PROTOCOL_SKYPE:I = 0x3

.field public static final PROTOCOL_YAHOO:I = 0x2

.field public static final TYPE_HOME:I = 0x1

.field public static final TYPE_OTHER:I = 0x3

.field public static final TYPE_WORK:I = 0x2


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 6452
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method public static final getProtocolLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "type"    # I
    .param p2, "label"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 6539
    const/4 v1, -0x1

    #@1
    if-ne p1, v1, :cond_0

    #@3
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@6
    move-result v1

    #@7
    if-eqz v1, :cond_1

    #@9
    .line 6542
    :cond_0
    invoke-static {p1}, Landroid/provider/ContactsContract$CommonDataKinds$Im;->getProtocolLabelResource(I)I

    #@c
    move-result v0

    #@d
    .line 6543
    .local v0, "labelRes":I
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    #@10
    move-result-object v1

    #@11
    return-object v1

    #@12
    .line 6540
    .end local v0    # "labelRes":I
    :cond_1
    return-object p2
.end method

.method public static final getProtocolLabelResource(I)I
    .locals 1
    .param p0, "type"    # I

    #@0
    .prologue
    .line 6518
    packed-switch p0, :pswitch_data_0

    #@3
    .line 6528
    const v0, 0x1040237

    #@6
    return v0

    #@7
    .line 6519
    :pswitch_0
    const v0, 0x1040238

    #@a
    return v0

    #@b
    .line 6520
    :pswitch_1
    const v0, 0x1040239

    #@e
    return v0

    #@f
    .line 6521
    :pswitch_2
    const v0, 0x104023a

    #@12
    return v0

    #@13
    .line 6522
    :pswitch_3
    const v0, 0x104023b

    #@16
    return v0

    #@17
    .line 6523
    :pswitch_4
    const v0, 0x104023c

    #@1a
    return v0

    #@1b
    .line 6524
    :pswitch_5
    const v0, 0x104023d

    #@1e
    return v0

    #@1f
    .line 6525
    :pswitch_6
    const v0, 0x104023e

    #@22
    return v0

    #@23
    .line 6526
    :pswitch_7
    const v0, 0x104023f

    #@26
    return v0

    #@27
    .line 6527
    :pswitch_8
    const v0, 0x1040240

    #@2a
    return v0

    #@2b
    .line 6518
    nop

    #@2c
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method

.method public static final getTypeLabel(Landroid/content/res/Resources;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 2
    .param p0, "res"    # Landroid/content/res/Resources;
    .param p1, "type"    # I
    .param p2, "label"    # Ljava/lang/CharSequence;

    #@0
    .prologue
    .line 6505
    if-nez p1, :cond_0

    #@2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@5
    move-result v1

    #@6
    if-eqz v1, :cond_1

    #@8
    .line 6508
    :cond_0
    invoke-static {p1}, Landroid/provider/ContactsContract$CommonDataKinds$Im;->getTypeLabelResource(I)I

    #@b
    move-result v0

    #@c
    .line 6509
    .local v0, "labelRes":I
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    #@f
    move-result-object v1

    #@10
    return-object v1

    #@11
    .line 6506
    .end local v0    # "labelRes":I
    :cond_1
    return-object p2
.end method

.method public static final getTypeLabelResource(I)I
    .locals 1
    .param p0, "type"    # I

    #@0
    .prologue
    .line 6490
    packed-switch p0, :pswitch_data_0

    #@3
    .line 6494
    const v0, 0x1040233

    #@6
    return v0

    #@7
    .line 6491
    :pswitch_0
    const v0, 0x1040234

    #@a
    return v0

    #@b
    .line 6492
    :pswitch_1
    const v0, 0x1040235

    #@e
    return v0

    #@f
    .line 6493
    :pswitch_2
    const v0, 0x1040236

    #@12
    return v0

    #@13
    .line 6490
    nop

    #@14
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
