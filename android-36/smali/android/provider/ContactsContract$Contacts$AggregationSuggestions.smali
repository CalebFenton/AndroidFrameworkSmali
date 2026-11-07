.class public final Landroid/provider/ContactsContract$Contacts$AggregationSuggestions;
.super Ljava/lang/Object;
.source "ContactsContract.java"

# interfaces
.implements Landroid/provider/BaseColumns;
.implements Landroid/provider/ContactsContract$ContactsColumns;
.implements Landroid/provider/ContactsContract$ContactOptionsColumns;
.implements Landroid/provider/ContactsContract$ContactStatusColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/ContactsContract$Contacts;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AggregationSuggestions"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/ContactsContract$Contacts$AggregationSuggestions$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CONTENT_DIRECTORY:Ljava/lang/String; = "suggestions"

.field public static final greylist-max-o PARAMETER_MATCH_NAME:Ljava/lang/String; = "name"


# direct methods
.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 2018
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final greylist builder()Landroid/provider/ContactsContract$Contacts$AggregationSuggestions$Builder;
    .registers 1

    .line 2103
    new-instance v0, Landroid/provider/ContactsContract$Contacts$AggregationSuggestions$Builder;

    invoke-direct {v0}, Landroid/provider/ContactsContract$Contacts$AggregationSuggestions$Builder;-><init>()V

    return-object v0
.end method
