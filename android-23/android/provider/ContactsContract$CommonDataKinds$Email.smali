.class public final Landroid/provider/ContactsContract$CommonDataKinds$Email;
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
    name = "Email"
.end annotation


# static fields
.field public static final ADDRESS:Ljava/lang/String; = "data1"

.field public static final CONTENT_FILTER_URI:Landroid/net/Uri;

.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/email_v2"

.field public static final CONTENT_LOOKUP_URI:Landroid/net/Uri;

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/email_v2"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DISPLAY_NAME:Ljava/lang/String; = "data4"

.field public static final ENTERPRISE_CONTENT_LOOKUP_URI:Landroid/net/Uri;

.field public static final TYPE_HOME:I = 0x1

.field public static final TYPE_MOBILE:I = 0x4

.field public static final TYPE_OTHER:I = 0x3

.field public static final TYPE_WORK:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .locals 2

    #@0
    .prologue
    .line 6033
    sget-object v0, Landroid/provider/ContactsContract$Data;->CONTENT_URI:Landroid/net/Uri;

    #@2
    .line 6034
    const-string/jumbo v1, "emails"

    #@5
    .line 6033
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    #@8
    move-result-object v0

    #@9
    sput-object v0, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_URI:Landroid/net/Uri;

    #@b
    .line 6051
    sget-object v0, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_URI:Landroid/net/Uri;

    #@d
    .line 6052
    const-string/jumbo v1, "lookup"

    #@10
    .line 6051
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    #@13
    move-result-object v0

    #@14
    sput-object v0, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    #@16
    .line 6099
    sget-object v0, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_URI:Landroid/net/Uri;

    #@18
    const-string/jumbo v1, "lookup_enterprise"

    #@1b
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    #@1e
    move-result-object v0

    #@1f
    .line 6098
    sput-object v0, Landroid/provider/ContactsContract$CommonDataKinds$Email;->ENTERPRISE_CONTENT_LOOKUP_URI:Landroid/net/Uri;

    #@21
    .line 6118
    sget-object v0, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_URI:Landroid/net/Uri;

    #@23
    .line 6119
    const-string/jumbo v1, "filter"

    #@26
    .line 6118
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    #@29
    move-result-object v0

    #@2a
    sput-object v0, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_FILTER_URI:Landroid/net/Uri;

    #@2c
    .line 6013
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 6018
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
    .line 6159
    if-nez p1, :cond_0

    #@2
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@5
    move-result v1

    #@6
    if-eqz v1, :cond_1

    #@8
    .line 6162
    :cond_0
    invoke-static {p1}, Landroid/provider/ContactsContract$CommonDataKinds$Email;->getTypeLabelResource(I)I

    #@b
    move-result v0

    #@c
    .line 6163
    .local v0, "labelRes":I
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    #@f
    move-result-object v1

    #@10
    return-object v1

    #@11
    .line 6160
    .end local v0    # "labelRes":I
    :cond_1
    return-object p2
.end method

.method public static final getTypeLabelResource(I)I
    .locals 1
    .param p0, "type"    # I

    #@0
    .prologue
    .line 6143
    packed-switch p0, :pswitch_data_0

    #@3
    .line 6148
    const v0, 0x104022a

    #@6
    return v0

    #@7
    .line 6144
    :pswitch_0
    const v0, 0x104022b

    #@a
    return v0

    #@b
    .line 6145
    :pswitch_1
    const v0, 0x104022c

    #@e
    return v0

    #@f
    .line 6146
    :pswitch_2
    const v0, 0x104022d

    #@12
    return v0

    #@13
    .line 6147
    :pswitch_3
    const v0, 0x104022e

    #@16
    return v0

    #@17
    .line 6143
    nop

    #@18
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
