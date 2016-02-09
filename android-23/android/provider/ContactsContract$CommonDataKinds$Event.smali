.class public final Landroid/provider/ContactsContract$CommonDataKinds$Event;
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
    name = "Event"
.end annotation


# static fields
.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/contact_event"

.field public static final START_DATE:Ljava/lang/String; = "data1"

.field public static final TYPE_ANNIVERSARY:I = 0x1

.field public static final TYPE_BIRTHDAY:I = 0x3

.field public static final TYPE_OTHER:I = 0x2


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 6897
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
    .line 6936
    if-nez p1, :cond_0

    #@2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@5
    move-result v1

    #@6
    if-eqz v1, :cond_1

    #@8
    .line 6939
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@b
    move-result-object v1

    #@c
    invoke-static {v1}, Landroid/provider/ContactsContract$CommonDataKinds$Event;->getTypeResource(Ljava/lang/Integer;)I

    #@f
    move-result v0

    #@10
    .line 6940
    .local v0, "labelRes":I
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    #@13
    move-result-object v1

    #@14
    return-object v1

    #@15
    .line 6937
    .end local v0    # "labelRes":I
    :cond_1
    return-object p2
.end method

.method public static getTypeResource(Ljava/lang/Integer;)I
    .locals 2
    .param p0, "type"    # Ljava/lang/Integer;

    #@0
    .prologue
    const v1, 0x1040229

    #@3
    .line 6917
    if-nez p0, :cond_0

    #@5
    .line 6918
    return v1

    #@6
    .line 6920
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    #@9
    move-result v0

    #@a
    packed-switch v0, :pswitch_data_0

    #@d
    .line 6925
    const v0, 0x1040226

    #@10
    return v0

    #@11
    .line 6922
    :pswitch_0
    const v0, 0x1040228

    #@14
    return v0

    #@15
    .line 6923
    :pswitch_1
    const v0, 0x1040227

    #@18
    return v0

    #@19
    .line 6924
    :pswitch_2
    return v1

    #@1a
    .line 6920
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
