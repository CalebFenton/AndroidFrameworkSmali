.class final Landroid/app/ActivityThread$ProviderClientRecord;
.super Ljava/lang/Object;
.source "ActivityThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ActivityThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ProviderClientRecord"
.end annotation


# instance fields
.field final mHolder:Landroid/app/IActivityManager$ContentProviderHolder;

.field final mLocalProvider:Landroid/content/ContentProvider;

.field final mNames:[Ljava/lang/String;

.field final mProvider:Landroid/content/IContentProvider;

.field final synthetic this$0:Landroid/app/ActivityThread;


# direct methods
.method constructor <init>(Landroid/app/ActivityThread;[Ljava/lang/String;Landroid/content/IContentProvider;Landroid/content/ContentProvider;Landroid/app/IActivityManager$ContentProviderHolder;)V
    .locals 0
    .param p1, "this$0"    # Landroid/app/ActivityThread;
    .param p2, "names"    # [Ljava/lang/String;
    .param p3, "provider"    # Landroid/content/IContentProvider;
    .param p4, "localProvider"    # Landroid/content/ContentProvider;
    .param p5, "holder"    # Landroid/app/IActivityManager$ContentProviderHolder;

    #@0
    .prologue
    .line 356
    iput-object p1, p0, Landroid/app/ActivityThread$ProviderClientRecord;->this$0:Landroid/app/ActivityThread;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    .line 359
    iput-object p2, p0, Landroid/app/ActivityThread$ProviderClientRecord;->mNames:[Ljava/lang/String;

    #@7
    .line 360
    iput-object p3, p0, Landroid/app/ActivityThread$ProviderClientRecord;->mProvider:Landroid/content/IContentProvider;

    #@9
    .line 361
    iput-object p4, p0, Landroid/app/ActivityThread$ProviderClientRecord;->mLocalProvider:Landroid/content/ContentProvider;

    #@b
    .line 362
    iput-object p5, p0, Landroid/app/ActivityThread$ProviderClientRecord;->mHolder:Landroid/app/IActivityManager$ContentProviderHolder;

    #@d
    .line 358
    return-void
.end method
