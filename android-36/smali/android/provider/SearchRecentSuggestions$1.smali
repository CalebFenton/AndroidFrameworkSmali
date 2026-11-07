.class Landroid/provider/SearchRecentSuggestions$1;
.super Ljava/lang/Thread;
.source "SearchRecentSuggestions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/provider/SearchRecentSuggestions;->saveRecentQuery(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/provider/SearchRecentSuggestions;

.field final synthetic blacklist val$line2:Ljava/lang/String;

.field final synthetic blacklist val$queryString:Ljava/lang/String;


# direct methods
.method constructor blacklist <init>(Landroid/provider/SearchRecentSuggestions;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "this$0"    # Landroid/provider/SearchRecentSuggestions;
    .param p2, "arg1"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 169
    iput-object p1, p0, Landroid/provider/SearchRecentSuggestions$1;->this$0:Landroid/provider/SearchRecentSuggestions;

    iput-object p3, p0, Landroid/provider/SearchRecentSuggestions$1;->val$queryString:Ljava/lang/String;

    iput-object p4, p0, Landroid/provider/SearchRecentSuggestions$1;->val$line2:Ljava/lang/String;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 4

    .line 172
    iget-object v0, p0, Landroid/provider/SearchRecentSuggestions$1;->this$0:Landroid/provider/SearchRecentSuggestions;

    iget-object v1, p0, Landroid/provider/SearchRecentSuggestions$1;->val$queryString:Ljava/lang/String;

    iget-object v2, p0, Landroid/provider/SearchRecentSuggestions$1;->val$line2:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/provider/SearchRecentSuggestions;->-$$Nest$msaveRecentQueryBlocking(Landroid/provider/SearchRecentSuggestions;Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    invoke-static {}, Landroid/provider/SearchRecentSuggestions;->-$$Nest$sfgetsWritesInProgress()Ljava/util/concurrent/Semaphore;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 174
    return-void
.end method
