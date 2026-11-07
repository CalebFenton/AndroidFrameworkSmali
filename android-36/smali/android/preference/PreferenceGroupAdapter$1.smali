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
.field final synthetic blacklist this$0:Landroid/preference/PreferenceGroupAdapter;


# direct methods
.method constructor blacklist <init>(Landroid/preference/PreferenceGroupAdapter;)V
    .registers 2
    .param p1, "this$0"    # Landroid/preference/PreferenceGroupAdapter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 98
    iput-object p1, p0, Landroid/preference/PreferenceGroupAdapter$1;->this$0:Landroid/preference/PreferenceGroupAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 2

    .line 100
    iget-object v0, p0, Landroid/preference/PreferenceGroupAdapter$1;->this$0:Landroid/preference/PreferenceGroupAdapter;

    invoke-static {v0}, Landroid/preference/PreferenceGroupAdapter;->-$$Nest$msyncMyPreferences(Landroid/preference/PreferenceGroupAdapter;)V

    .line 101
    return-void
.end method
