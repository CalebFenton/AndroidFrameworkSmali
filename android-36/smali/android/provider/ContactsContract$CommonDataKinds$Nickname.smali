.class public final Landroid/provider/ContactsContract$CommonDataKinds$Nickname;
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
    name = "Nickname"
.end annotation


# static fields
.field public static final whitelist CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/nickname"

.field public static final whitelist NAME:Ljava/lang/String; = "data1"

.field public static final whitelist TYPE_DEFAULT:I = 0x1

.field public static final whitelist TYPE_INITIALS:I = 0x5

.field public static final whitelist TYPE_MAIDEN_NAME:I = 0x3

.field public static final whitelist TYPE_MAINDEN_NAME:I = 0x3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist TYPE_OTHER_NAME:I = 0x2

.field public static final whitelist TYPE_SHORT_NAME:I = 0x4


# direct methods
.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 6692
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
