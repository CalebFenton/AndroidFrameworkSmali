.class final Landroid/app/ActivityThread$ProviderClientRecord;
.super Ljava/lang/Object;
.source "ActivityThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ProviderClientRecord"
.end annotation


# instance fields
.field final greylist mHolder:Landroid/app/ContentProviderHolder;

.field final greylist mLocalProvider:Landroid/content/ContentProvider;

.field final greylist-max-o mNames:[Ljava/lang/String;

.field final greylist mProvider:Landroid/content/IContentProvider;


# direct methods
.method constructor blacklist <init>([Ljava/lang/String;Landroid/content/IContentProvider;Landroid/content/ContentProvider;Landroid/app/ContentProviderHolder;)V
    .registers 5
    .param p1, "names"    # [Ljava/lang/String;
    .param p2, "provider"    # Landroid/content/IContentProvider;
    .param p3, "localProvider"    # Landroid/content/ContentProvider;
    .param p4, "holder"    # Landroid/app/ContentProviderHolder;

    .line 860
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 861
    iput-object p1, p0, Landroid/app/ActivityThread$ProviderClientRecord;->mNames:[Ljava/lang/String;

    .line 862
    iput-object p2, p0, Landroid/app/ActivityThread$ProviderClientRecord;->mProvider:Landroid/content/IContentProvider;

    .line 863
    iput-object p3, p0, Landroid/app/ActivityThread$ProviderClientRecord;->mLocalProvider:Landroid/content/ContentProvider;

    .line 864
    iput-object p4, p0, Landroid/app/ActivityThread$ProviderClientRecord;->mHolder:Landroid/app/ContentProviderHolder;

    .line 865
    return-void
.end method
