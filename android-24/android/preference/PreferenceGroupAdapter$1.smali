.class Landroid/preference/PreferenceGroupAdapter$1;
.super Ljava/lang/Object;
.source "PreferenceGroupAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/preference/PreferenceGroupAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/preference/PreferenceGroupAdapter;


# direct methods
.method constructor <init>(Landroid/preference/PreferenceGroupAdapter;)V
    .locals 0
    .param p1, "this$0"    # Landroid/preference/PreferenceGroupAdapter;

    #@0
    .prologue
    .line 90
    iput-object p1, p0, Landroid/preference/PreferenceGroupAdapter$1;->this$0:Landroid/preference/PreferenceGroupAdapter;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    #@0
    .prologue
    .line 92
    iget-object v0, p0, Landroid/preference/PreferenceGroupAdapter$1;->this$0:Landroid/preference/PreferenceGroupAdapter;

    #@2
    invoke-static {v0}, Landroid/preference/PreferenceGroupAdapter;->-wrap0(Landroid/preference/PreferenceGroupAdapter;)V

    #@5
    .line 91
    return-void
.end method
