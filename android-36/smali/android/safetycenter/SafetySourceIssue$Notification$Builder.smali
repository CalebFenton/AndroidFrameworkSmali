.class public final Landroid/safetycenter/SafetySourceIssue$Notification$Builder;
.super Ljava/lang/Object;
.source "SafetySourceIssue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/safetycenter/SafetySourceIssue$Notification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final blacklist mActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/safetycenter/SafetySourceIssue$Action;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mText:Ljava/lang/CharSequence;

.field private final blacklist mTitle:Ljava/lang/CharSequence;


# direct methods
.method public constructor whitelist <init>(Landroid/safetycenter/SafetySourceIssue$Notification;)V
    .registers 4
    .param p1, "notification"    # Landroid/safetycenter/SafetySourceIssue$Notification;

    .line 1156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1148
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/safetycenter/SafetySourceIssue$Notification$Builder;->mActions:Ljava/util/List;

    .line 1157
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1158
    invoke-static {p1}, Landroid/safetycenter/SafetySourceIssue$Notification;->-$$Nest$fgetmTitle(Landroid/safetycenter/SafetySourceIssue$Notification;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/safetycenter/SafetySourceIssue$Notification$Builder;->mTitle:Ljava/lang/CharSequence;

    .line 1159
    invoke-static {p1}, Landroid/safetycenter/SafetySourceIssue$Notification;->-$$Nest$fgetmText(Landroid/safetycenter/SafetySourceIssue$Notification;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/safetycenter/SafetySourceIssue$Notification$Builder;->mText:Ljava/lang/CharSequence;

    .line 1160
    iget-object v0, p0, Landroid/safetycenter/SafetySourceIssue$Notification$Builder;->mActions:Ljava/util/List;

    invoke-static {p1}, Landroid/safetycenter/SafetySourceIssue$Notification;->-$$Nest$fgetmActions(Landroid/safetycenter/SafetySourceIssue$Notification;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1161
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .registers 4
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "text"    # Ljava/lang/CharSequence;

    .line 1150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1148
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/safetycenter/SafetySourceIssue$Notification$Builder;->mActions:Ljava/util/List;

    .line 1151
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/safetycenter/SafetySourceIssue$Notification$Builder;->mTitle:Ljava/lang/CharSequence;

    .line 1152
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/safetycenter/SafetySourceIssue$Notification$Builder;->mText:Ljava/lang/CharSequence;

    .line 1153
    return-void
.end method


# virtual methods
.method public whitelist addAction(Landroid/safetycenter/SafetySourceIssue$Action;)Landroid/safetycenter/SafetySourceIssue$Notification$Builder;
    .registers 4
    .param p1, "action"    # Landroid/safetycenter/SafetySourceIssue$Action;

    .line 1166
    iget-object v0, p0, Landroid/safetycenter/SafetySourceIssue$Notification$Builder;->mActions:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/safetycenter/SafetySourceIssue$Action;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1167
    return-object p0
.end method

.method public whitelist addActions(Ljava/util/List;)Landroid/safetycenter/SafetySourceIssue$Notification$Builder;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/safetycenter/SafetySourceIssue$Action;",
            ">;)",
            "Landroid/safetycenter/SafetySourceIssue$Notification$Builder;"
        }
    .end annotation

    .line 1173
    .local p1, "actions":Ljava/util/List;, "Ljava/util/List<Landroid/safetycenter/SafetySourceIssue$Action;>;"
    iget-object v0, p0, Landroid/safetycenter/SafetySourceIssue$Notification$Builder;->mActions:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1174
    return-object p0
.end method

.method public whitelist build()Landroid/safetycenter/SafetySourceIssue$Notification;
    .registers 6

    .line 1187
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/safetycenter/SafetySourceIssue$Notification$Builder;->mActions:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 1188
    .local v0, "actions":Ljava/util/List;, "Ljava/util/List<Landroid/safetycenter/SafetySourceIssue$Action;>;"
    const-string v1, "Custom notification cannot have duplicate action ids"

    invoke-static {v0, v1}, Landroid/safetycenter/SafetySourceIssue$Action;->-$$Nest$smenforceUniqueActionIds(Ljava/util/List;Ljava/lang/String;)V

    .line 1190
    nop

    .line 1191
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-gt v1, v2, :cond_1a

    const/4 v1, 0x1

    goto :goto_1b

    :cond_1a
    const/4 v1, 0x0

    .line 1190
    :goto_1b
    const-string v2, "Custom notification must not contain more than 2 actions"

    invoke-static {v1, v2}, Landroid/permission/jarjar/com/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 1193
    new-instance v1, Landroid/safetycenter/SafetySourceIssue$Notification;

    iget-object v2, p0, Landroid/safetycenter/SafetySourceIssue$Notification$Builder;->mTitle:Ljava/lang/CharSequence;

    iget-object v3, p0, Landroid/safetycenter/SafetySourceIssue$Notification$Builder;->mText:Ljava/lang/CharSequence;

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v0, v4}, Landroid/safetycenter/SafetySourceIssue$Notification;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/util/List;Landroid/safetycenter/SafetySourceIssue-IA;)V

    return-object v1
.end method

.method public whitelist clearActions()Landroid/safetycenter/SafetySourceIssue$Notification$Builder;
    .registers 2

    .line 1180
    iget-object v0, p0, Landroid/safetycenter/SafetySourceIssue$Notification$Builder;->mActions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1181
    return-object p0
.end method
